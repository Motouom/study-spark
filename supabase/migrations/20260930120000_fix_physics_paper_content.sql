-- Fix Physics paper content (issue: advanced papers contained ordinary-level
-- content and questions were duplicated across papers).
--
-- Replaces the auto-generated placeholder/wrong-level content of all 22
-- Physics papers (11 Advanced Level, 11 Ordinary Level) with distinct,
-- correct-level questions.

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ADVANCED LEVEL PHYSICS — P1 (Multiple Choice) — Upper Sixth
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** Which of the following is a vector quantity?

A. Speed  
B. Mass  
C. Displacement  
D. Energy  

---

**Q2.** A body moving in a circle at constant speed has:

A. constant velocity  
B. zero acceleration  
C. acceleration directed towards the centre  
D. acceleration directed along the tangent  

---

**Q3.** The work done by a force of 10 N moving a body 5 m in the direction of the force is:

A. 2 J  
B. 15 J  
C. 50 J  
D. 500 J  

---

**Q4.** The SI unit of momentum is:

A. N  
B. kg m s⁻¹  
C. J  
D. W  

---

**Q5.** A stone is thrown vertically upwards. At its highest point its:

A. velocity is zero and acceleration is zero  
B. velocity is zero and acceleration is g downwards  
C. velocity is g and acceleration is zero  
D. velocity and acceleration are both g  

---

**Q6.** The gravitational force between two masses is F. If the distance between them is doubled, the new force is:

A. F  
B. F/2  
C. F/4  
D. 4F  

---

**Q7.** Simple harmonic motion is best described as motion where:

A. acceleration is proportional to displacement and directed towards the equilibrium position  
B. acceleration is constant  
C. velocity is constant  
D. displacement is constant  

---

**Q8.** The time period of a simple pendulum depends on:

A. the mass of the bob  
B. the amplitude  
C. the length of the string  
D. the material of the bob  

---

**Q9.** Two waves of the same frequency and amplitude travelling in opposite directions produce:

A. beats  
B. a stationary wave  
C. refraction  
D. diffraction  

---

**Q10.** The speed of sound in air is greatest when the air is:

A. cold and dry  
B. cold and humid  
C. hot and dry  
D. hot and humid  

---

**Q11.** The electric field strength at a point is defined as:

A. force per unit charge  
B. work per unit charge  
C. charge per unit area  
D. potential difference per unit length  

---

**Q12.** The capacitance of a parallel-plate capacitor is increased by:

A. increasing the plate separation  
B. inserting a dielectric between the plates  
C. decreasing the plate area  
D. reducing the potential difference  

---

**Q13.** The resistance of a wire depends on all of the following EXCEPT:

A. its length  
B. its cross-sectional area  
C. its resistivity  
D. the current through it  

---

**Q14.** In a series circuit, the total resistance is:

A. the sum of the individual resistances  
B. the reciprocal of the sum of the reciprocals  
C. always less than the smallest resistance  
D. equal to the largest resistance  

---

**Q15.** The force on a current-carrying conductor in a magnetic field is maximum when the conductor is:

A. parallel to the field  
B. perpendicular to the field  
C. at 45° to the field  
D. antiparallel to the field  

---

**Q16.** Electromagnetic induction is the production of:

A. a magnetic field by a current  
B. an e.m.f. by a changing magnetic flux  
C. a current by a battery  
D. heat by a resistor  

---

**Q17.** In an ideal transformer, if the number of turns in the secondary is twice that in the primary, the secondary voltage is:

A. half the primary voltage  
B. equal to the primary voltage  
C. twice the primary voltage  
D. four times the primary voltage  

---

**Q18.** The energy of a photon is directly proportional to:

A. its wavelength  
B. its frequency  
C. the speed of light  
D. its intensity  

---

**Q19.** The photoelectric effect provides evidence for:

A. the wave nature of light  
B. the particle nature of light  
C. the existence of atoms  
D. the conservation of charge  

---

**Q20.** In a nuclear fission reaction, the total mass of the products is:

A. greater than the mass of the reactants  
B. equal to the mass of the reactants  
C. slightly less than the mass of the reactants  
D. unrelated to the mass of the reactants  

---

**Q21.** The half-life of a radioactive isotope is the time taken for:

A. all the nuclei to decay  
B. half the nuclei to decay  
C. the activity to double  
D. the mass to double  

---

**Q22.** Which of the following is a semiconductor?

A. Copper  
B. Silicon  
C. Aluminium  
D. Graphite  

---

**Q23.** In a p-n junction diode, current flows easily when it is:

A. reverse biased  
B. forward biased  
C. unbiased  
D. connected to an a.c. source  

---

**Q24.** The first law of thermodynamics is a statement of the conservation of:

A. momentum  
B. charge  
C. energy  
D. mass  

---

**Q25.** An ideal gas is compressed at constant temperature. Its:

A. pressure increases and volume decreases  
B. pressure decreases and volume increases  
C. pressure and volume both increase  
D. pressure and volume both decrease  

---

## ANSWER KEY

1. C  2. C  3. C  4. B  5. B  6. C  7. A  8. C  9. B  10. D  
11. A  12. B  13. D  14. A  15. B  16. B  17. C  18. B  19. B  20. C  
21. B  22. B  23. B  24. C  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics MCQ set 1',
    updated_at = NOW()
WHERE id = '66d59cbf-edec-dd63-ab7c-870176dbfcd2';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The dimension of force is:

A. MLT⁻²  
B. ML²T⁻²  
C. MLT⁻¹  
D. ML⁻¹T⁻²  

---

**Q2.** A ball is dropped from a height h. Its speed just before hitting the ground is:

A. √(2gh)  
B. 2gh  
C. gh  
D. √(gh)  

---

**Q3.** The principle of conservation of linear momentum applies when:

A. there is no external force  
B. the collision is perfectly elastic  
C. the collision is perfectly inelastic  
D. kinetic energy is conserved  

---

**Q4.** A body of mass 2 kg moving at 3 m/s has kinetic energy:

A. 6 J  
B. 9 J  
C. 12 J  
D. 18 J  

---

**Q5.** The escape velocity from the Earth's surface is approximately:

A. 7.9 km/s  
B. 11.2 km/s  
C. 3.0 × 10⁸ m/s  
D. 9.8 m/s  

---

**Q6.** For a body in simple harmonic motion, the maximum speed occurs at:

A. the extreme positions  
B. the equilibrium position  
C. halfway between equilibrium and extreme  
D. all positions equally  

---

**Q7.** The frequency of a stretched string is increased by:

A. increasing its length  
B. increasing its tension  
C. increasing its mass per unit length  
D. decreasing its tension  

---

**Q8.** When a wave passes from one medium to another, the quantity that remains constant is:

A. wavelength  
B. frequency  
C. speed  
D. amplitude  

---

**Q9.** The phenomenon of interference of light demonstrates that light:

A. travels in straight lines  
B. has a wave nature  
C. has a particle nature  
D. is a longitudinal wave  

---

**Q10.** The potential difference between two points is the:

A. work done per unit charge in moving a charge between them  
B. force per unit charge  
C. energy stored per unit volume  
D. charge per unit potential  

---

**Q11.** Three capacitors of capacitance C each connected in parallel have a total capacitance of:

A. C/3  
B. C  
C. 3C  
D. C³  

---

**Q12.** The resistivity of a material depends on:

A. its length  
B. its cross-sectional area  
C. its temperature  
D. the current through it  

---

**Q13.** Kirchhoff's second law (loop rule) is based on the conservation of:

A. charge  
B. energy  
C. momentum  
D. mass  

---

**Q14.** The magnetic flux through a coil is given by:

A. BA cos θ  
B. BA sin θ  
C. B/A  
D. A/B  

---

**Q15.** Lenz's law states that the induced current opposes:

A. the applied voltage  
B. the change producing it  
C. the magnetic field  
D. the current in the primary  

---

**Q16.** In an a.c. circuit, the r.m.s. value of a sinusoidal voltage is related to the peak value V₀ by:

A. V_rms = V₀  
B. V_rms = V₀/√2  
C. V_rms = V₀√2  
D. V_rms = V₀/2  

---

**Q17.** The de Broglie wavelength of a particle is:

A. h/p  
B. p/h  
C. hf  
D. hc  

---

**Q18.** The work function of a metal is the:

A. minimum energy required to remove an electron  
B. maximum kinetic energy of emitted electrons  
C. energy of the incident photon  
D. binding energy of the nucleus  

---

**Q19.** In the equation E = mc², the symbol c represents:

A. the speed of sound  
B. the speed of light  
C. the charge of an electron  
D. the specific heat capacity  

---

**Q20.** Alpha particles are:

A. electrons  
B. helium nuclei  
C. photons  
D. neutrons  

---

**Q21.** The activity of a radioactive sample is measured in:

A. becquerels  
B. joules  
C. watts  
D. coulombs  

---

**Q22.** A transistor is used primarily as:

A. a rectifier  
B. an amplifier  
C. a capacitor  
D. an inductor  

---

**Q23.** The output of a full-wave rectifier is:

A. a.c.  
B. pulsating d.c.  
C. steady d.c.  
D. a square wave  

---

**Q24.** The efficiency of a heat engine is given by:

A. (Q₁ − Q₂)/Q₁  
B. Q₁/Q₂  
C. Q₂/Q₁  
D. (Q₁ + Q₂)/Q₁  

---

**Q25.** According to the kinetic theory, the average kinetic energy of gas molecules is proportional to:

A. the pressure  
B. the volume  
C. the absolute temperature  
D. the number of molecules  

---

## ANSWER KEY

1. A  2. A  3. A  4. B  5. B  6. B  7. B  8. B  9. B  10. A  
11. C  12. C  13. B  14. A  15. B  16. B  17. A  18. A  19. B  20. B  
21. A  22. B  23. B  24. A  25. C
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics MCQ set 2',
    updated_at = NOW()
WHERE id = '87a7d08b-dc70-cda4-5f66-0b06c3e65937';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The number of significant figures in 0.00450 is:

A. 2  
B. 3  
C. 4  
D. 5  

---

**Q2.** A projectile is launched at 45° to the horizontal. Its range is maximum when the angle of projection is:

A. 30°  
B. 45°  
C. 60°  
D. 90°  

---

**Q3.** The coefficient of restitution for a perfectly elastic collision is:

A. 0  
B. 0.5  
C. 1  
D. 2  

---

**Q4.** A body of mass 5 kg is lifted through a height of 2 m. The work done against gravity is (g = 10 m/s²):

A. 10 J  
B. 50 J  
C. 100 J  
D. 250 J  

---

**Q5.** The period of a satellite orbiting close to the Earth's surface is approximately:

A. 24 hours  
B. 90 minutes  
C. 1 hour  
D. 12 hours  

---

**Q6.** In simple harmonic motion, the acceleration is maximum at:

A. the equilibrium position  
B. the extreme positions  
C. all positions  
D. the mean position  

---

**Q7.** The speed of a transverse wave on a string is given by:

A. √(T/μ)  
B. T/μ  
C. √(μ/T)  
D. μT  

---

**Q8.** Beats are produced when two waves have:

A. the same frequency  
B. slightly different frequencies  
C. the same amplitude  
D. the same phase  

---

**Q9.** In Young's double-slit experiment, the fringe separation increases when:

A. the slit separation increases  
B. the screen distance decreases  
C. the wavelength increases  
D. the slit width increases  

---

**Q10.** The electric potential at a point due to a point charge Q is:

A. Q/(4πε₀r)  
B. Q/(4πε₀r²)  
C. 4πε₀Qr  
D. Qr/(4πε₀)  

---

**Q11.** The energy stored in a capacitor of capacitance C charged to voltage V is:

A. CV  
B. ½CV²  
C. ½CV  
D. CV²  

---

**Q12.** The internal resistance of a cell causes:

A. the terminal voltage to be less than the e.m.f.  
B. the terminal voltage to be greater than the e.m.f.  
C. the e.m.f. to increase  
D. no effect on the terminal voltage  

---

**Q13.** The magnetic field at the centre of a circular coil is:

A. μ₀NI/(2r)  
B. μ₀NI/(2πr)  
C. μ₀NIr  
D. NI/(2μ₀r)  

---

**Q14.** The force between two parallel current-carrying conductors is:

A. attractive when currents are in the same direction  
B. attractive when currents are in opposite directions  
C. always repulsive  
D. always attractive  

---

**Q15.** The e.m.f. induced in a coil is proportional to:

A. the magnetic flux  
B. the rate of change of magnetic flux  
C. the current  
D. the resistance  

---

**Q16.** In a step-up transformer, the secondary has:

A. fewer turns and higher voltage  
B. more turns and higher voltage  
C. more turns and lower voltage  
D. fewer turns and lower voltage  

---

**Q17.** The stopping potential in the photoelectric effect depends on:

A. the intensity of light  
B. the frequency of light  
C. the area of the metal  
D. the time of exposure  

---

**Q18.** The number of nucleons in a nucleus is the:

A. atomic number  
B. mass number  
C. neutron number  
D. electron number  

---

**Q19.** Gamma rays are:

A. high-energy electrons  
B. high-energy electromagnetic waves  
C. helium nuclei  
D. neutrons  

---

**Q20.** The binding energy per nucleon is a measure of:

A. the stability of the nucleus  
B. the size of the nucleus  
C. the charge of the nucleus  
D. the mass of the nucleus  

---

**Q21.** A radioactive isotope decays by beta emission. Its:

A. atomic number increases by one  
B. atomic number decreases by one  
C. mass number increases by one  
D. mass number decreases by four  

---

**Q22.** The current gain of a common-emitter transistor is:

A. I_C/I_B  
B. I_B/I_C  
C. I_E/I_B  
D. I_C/I_E  

---

**Q23.** A logic gate that gives a HIGH output only when all inputs are HIGH is:

A. OR gate  
B. AND gate  
C. NOT gate  
D. NAND gate  

---

**Q24.** The specific latent heat of fusion is the heat required to:

A. raise the temperature of a substance by 1 K  
B. change a solid to a liquid at constant temperature  
C. change a liquid to a gas at constant temperature  
D. raise the temperature of 1 kg by 1 K  

---

**Q25.** For an isothermal process, the:

A. temperature remains constant  
B. pressure remains constant  
C. volume remains constant  
D. heat remains constant  

---

## ANSWER KEY

1. B  2. B  3. C  4. C  5. B  6. B  7. A  8. B  9. C  10. A  
11. B  12. A  13. A  14. A  15. B  16. B  17. B  18. B  19. B  20. A  
21. A  22. A  23. B  24. B  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics MCQ set 3',
    updated_at = NOW()
WHERE id = 'c45d97a3-c276-4159-94fc-1eb5c94d4e5e';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ADVANCED LEVEL PHYSICS — P2 (Structured) — Upper Sixth
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MECHANICS

**Q1.** A body of mass 4 kg is projected vertically upwards with a speed of 20 m/s. (Take g = 10 m/s².)

(a) State the principle of conservation of mechanical energy. *(2 marks)*

(b) Calculate the maximum height reached by the body. *(4 marks)*

(c) Calculate the kinetic energy of the body when it has risen 10 m. *(4 marks)*

(d) State two assumptions made in your calculations. *(2 marks)*

---

**Q2.** A car of mass 1200 kg moving at 30 m/s collides head-on with a stationary lorry of mass 3000 kg and they move together after impact.

(a) State the law of conservation of linear momentum. *(2 marks)*

(b) Calculate the common velocity of the two vehicles after the collision. *(4 marks)*

(c) Determine whether the collision is elastic or inelastic, giving a reason. *(3 marks)*

(d) Calculate the kinetic energy lost during the collision. *(3 marks)*

---

## SECTION B: WAVES AND OPTICS

**Q3.** A progressive wave is described by the equation y = 0.05 sin(2π(50t − 0.2x)) where x and y are in metres and t is in seconds.

(a) State the amplitude, frequency, and wavelength of the wave. *(3 marks)*

(b) Calculate the speed of the wave. *(3 marks)*

(c) Explain what is meant by a stationary wave and state how it is formed. *(4 marks)*

(d) State two differences between a progressive wave and a stationary wave. *(2 marks)*

---

**Q4.** In a Young's double-slit experiment, light of wavelength 5.5 × 10⁻⁷ m is used. The slits are 0.5 mm apart and the screen is 2 m from the slits.

(a) Define the term "fringe separation". *(2 marks)*

(b) Calculate the fringe separation on the screen. *(4 marks)*

(c) State what happens to the fringe separation if the wavelength is increased. *(2 marks)*

(d) Explain why the central fringe is bright. *(2 marks)*

---

## SECTION C: ELECTRICITY AND MAGNETISM

**Q5.** A capacitor of capacitance 20 µF is charged to a potential difference of 100 V.

(a) Define capacitance. *(2 marks)*

(b) Calculate the charge stored on the capacitor. *(3 marks)*

(c) Calculate the energy stored in the capacitor. *(3 marks)*

(d) The capacitor is now connected in parallel with an identical uncharged capacitor. Calculate the new potential difference across the combination. *(4 marks)*

---

**Q6.** A step-down transformer has 2000 turns in its primary coil and 200 turns in its secondary coil. The primary is connected to a 240 V a.c. supply.

(a) State the principle of operation of a transformer. *(2 marks)*

(b) Calculate the secondary voltage. *(3 marks)*

(c) If the transformer is 90% efficient and the secondary current is 5 A, calculate the primary current. *(4 marks)*

(d) State two energy losses in a transformer and how each is reduced. *(3 marks)*

---

## SECTION D: MODERN PHYSICS

**Q7.** The work function of a metal is 3.0 eV. Light of frequency 1.2 × 10¹⁵ Hz is incident on the metal. (h = 6.63 × 10⁻³⁴ J s, 1 eV = 1.6 × 10⁻¹⁹ J)

(a) Define the work function of a metal. *(2 marks)*

(b) Calculate the energy of the incident photon in joules. *(3 marks)*

(c) Determine whether photoelectric emission occurs, giving a reason. *(3 marks)*

(d) Calculate the maximum kinetic energy of the emitted electrons. *(4 marks)*

---

**Q8.** A radioactive isotope has a half-life of 8 days and an initial activity of 6400 Bq.

(a) Define the term "half-life". *(2 marks)*

(b) Calculate the activity of the sample after 24 days. *(4 marks)*

(c) State one use of radioactivity in medicine. *(2 marks)*

(d) Explain why gamma radiation is more penetrating than alpha radiation. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics structured set 1',
    updated_at = NOW()
WHERE id = '03879695-d828-c13c-da4e-b5cfe842d813';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MECHANICS

**Q1.** A body of mass 2 kg moves in a circle of radius 0.5 m with a constant speed of 4 m/s.

(a) Define angular velocity. *(2 marks)*

(b) Calculate the angular velocity of the body. *(3 marks)*

(c) Calculate the centripetal force acting on the body. *(4 marks)*

(d) State what happens to the centripetal force if the radius is doubled at constant speed. *(2 marks)*

---

**Q2.** A stone of mass 0.5 kg is whirled in a vertical circle of radius 1 m at a constant speed of 5 m/s. (g = 10 m/s²)

(a) State the direction of the centripetal force at the top of the circle. *(2 marks)*

(b) Calculate the centripetal force on the stone. *(3 marks)*

(c) Calculate the tension in the string at the bottom of the circle. *(4 marks)*

(d) Explain why the string is more likely to break at the bottom than at the top. *(3 marks)*

---

## SECTION B: THERMAL PHYSICS

**Q3.** 0.5 kg of ice at 0 °C is placed in 2 kg of water at 60 °C in a well-insulated container. (Specific latent heat of fusion of ice = 3.34 × 10⁵ J/kg, specific heat capacity of water = 4200 J/kg K)

(a) Define specific latent heat of fusion. *(2 marks)*

(b) Calculate the heat required to melt all the ice. *(3 marks)*

(c) Calculate the final temperature of the mixture. *(5 marks)*

(d) State one assumption made in your calculation. *(2 marks)*

---

**Q4.** An ideal gas occupies a volume of 0.02 m³ at a pressure of 1.0 × 10⁵ Pa and a temperature of 300 K.

(a) State the ideal gas equation. *(2 marks)*

(b) Calculate the number of moles of gas present. (R = 8.31 J/mol K) *(4 marks)*

(c) The gas is heated at constant pressure until its volume doubles. Calculate the new temperature. *(4 marks)*

(d) State two assumptions of the kinetic theory of gases. *(2 marks)*

---

## SECTION C: ELECTRICITY AND MAGNETISM

**Q5.** A cell of e.m.f. 1.5 V and internal resistance 0.5 Ω is connected to a 2.5 Ω resistor.

(a) Define e.m.f. of a cell. *(2 marks)*

(b) Calculate the current in the circuit. *(3 marks)*

(c) Calculate the terminal voltage of the cell. *(3 marks)*

(d) Calculate the power dissipated in the external resistor. *(3 marks)*

---

**Q6.** A long straight conductor carries a current of 5 A. (μ₀ = 4π × 10⁻⁷ H/m)

(a) State the direction of the magnetic field around a current-carrying conductor. *(2 marks)*

(b) Calculate the magnetic flux density at a point 0.1 m from the conductor. *(4 marks)*

(c) State the unit of magnetic flux density. *(1 mark)*

(d) A second conductor carrying the same current is placed parallel to the first at 0.1 m. State whether the force between them is attractive or repulsive if the currents are in the same direction. *(2 marks)*

---

## SECTION D: MODERN PHYSICS

**Q7.** A nucleus of uranium-235 undergoes fission by absorbing a neutron.

(a) State what is meant by nuclear fission. *(2 marks)*

(b) Write a typical fission equation for uranium-235. *(3 marks)*

(c) Explain why a chain reaction can occur. *(3 marks)*

(d) State one use of a controlled chain reaction. *(2 marks)*

---

**Q8.** The half-life of a radioactive isotope is 6 hours. A sample has an initial mass of 80 g.

(a) Define the term "half-life". *(2 marks)*

(b) Calculate the mass remaining after 18 hours. *(4 marks)*

(c) State the type of radiation emitted by a nucleus that changes its atomic number by −1. *(2 marks)*

(d) Explain how carbon-14 dating is used to determine the age of organic material. *(4 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics structured set 2',
    updated_at = NOW()
WHERE id = 'fc1c34b3-2720-6121-95ba-2b1d72b4a6ce';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MECHANICS

**Q1.** A body of mass 3 kg is acted upon by a constant force of 12 N for 5 s. The body is initially at rest.

(a) State Newton's second law of motion. *(2 marks)*

(b) Calculate the acceleration of the body. *(3 marks)*

(c) Calculate the velocity of the body after 5 s. *(3 marks)*

(d) Calculate the distance travelled in 5 s. *(3 marks)*

---

**Q2.** A ball of mass 0.2 kg moving at 10 m/s strikes a wall and rebounds with a speed of 8 m/s.

(a) Define impulse. *(2 marks)*

(b) Calculate the change in momentum of the ball. *(4 marks)*

(c) If the ball is in contact with the wall for 0.05 s, calculate the average force on the ball. *(4 marks)*

(d) State the principle of conservation of momentum. *(2 marks)*

---

## SECTION B: WAVES AND OPTICS

**Q3.** A progressive wave has a frequency of 500 Hz and a wavelength of 0.6 m.

(a) Define the term "wavelength". *(2 marks)*

(b) Calculate the speed of the wave. *(3 marks)*

(c) State two differences between a longitudinal and a transverse wave. *(4 marks)*

(d) Give one example of each type of wave. *(2 marks)*

---

**Q4.** A diffraction grating has 5000 lines per centimetre. Light of wavelength 6.0 × 10⁻⁷ m is incident normally on the grating.

(a) State the diffraction grating equation. *(2 marks)*

(b) Calculate the grating spacing d. *(3 marks)*

(c) Calculate the angle of the first-order maximum. *(4 marks)*

(d) State what happens to the angle if the wavelength is increased. *(2 marks)*

---

## SECTION C: ELECTRICITY AND MAGNETISM

**Q5.** Three resistors of 2 Ω, 3 Ω and 6 Ω are connected in parallel across a 12 V supply.

(a) State the formula for the total resistance of resistors in parallel. *(2 marks)*

(b) Calculate the total resistance of the combination. *(4 marks)*

(c) Calculate the total current drawn from the supply. *(3 marks)*

(d) Calculate the power dissipated in the 2 Ω resistor. *(3 marks)*

---

**Q6.** A coil of 200 turns and area 0.01 m² is placed perpendicular to a magnetic field of flux density 0.5 T.

(a) Define magnetic flux. *(2 marks)*

(b) Calculate the magnetic flux through the coil. *(3 marks)*

(c) The field is reduced to zero in 0.1 s. Calculate the average induced e.m.f. *(4 marks)*

(d) State Lenz's law. *(2 marks)*

---

## SECTION D: MODERN PHYSICS

**Q7.** Light of wavelength 4.0 × 10⁻⁷ m is incident on a metal surface. The work function of the metal is 2.5 eV. (h = 6.63 × 10⁻³⁴ J s, c = 3 × 10⁸ m/s, 1 eV = 1.6 × 10⁻¹⁹ J)

(a) Define the threshold frequency. *(2 marks)*

(b) Calculate the energy of the incident photon in joules. *(3 marks)*

(c) Calculate the maximum kinetic energy of the emitted electrons in eV. *(4 marks)*

(d) State what happens to the kinetic energy if the intensity of light is increased. *(2 marks)*

---

**Q8.** A radioactive sample has an activity of 4800 Bq and a half-life of 4 days.

(a) Define the term "activity". *(2 marks)*

(b) Calculate the activity after 12 days. *(4 marks)*

(c) State two properties of alpha radiation. *(2 marks)*

(d) Explain why beta particles are more penetrating than alpha particles. *(3 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics structured set 3',
    updated_at = NOW()
WHERE id = '2d61513b-4c9e-c27f-5f8c-090d63a26a8f';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MECHANICS

**Q1.** A body of mass 5 kg is projected horizontally from a height of 20 m with a speed of 10 m/s. (g = 10 m/s²)

(a) State the two independent components of projectile motion. *(2 marks)*

(b) Calculate the time taken for the body to reach the ground. *(3 marks)*

(c) Calculate the horizontal distance travelled. *(3 marks)*

(d) Calculate the vertical velocity just before impact. *(3 marks)*

---

**Q2.** A satellite of mass 500 kg orbits the Earth at a height where the gravitational field strength is 8 N/kg.

(a) Define gravitational field strength. *(2 marks)*

(b) Calculate the gravitational force on the satellite. *(3 marks)*

(c) State the relationship between gravitational field strength and distance from the Earth's centre. *(2 marks)*

(d) Explain why a satellite in a circular orbit does not fall to the Earth. *(3 marks)*

---

## SECTION B: OSCILLATIONS AND WAVES

**Q3.** A mass of 0.2 kg is attached to a spring and performs simple harmonic motion with a period of 0.5 s.

(a) Define simple harmonic motion. *(2 marks)*

(b) Calculate the angular frequency of the motion. *(3 marks)*

(c) Calculate the spring constant. (Use ω = √(k/m)) *(4 marks)*

(d) State the relationship between the period and the mass. *(2 marks)*

---

**Q4.** Two sources of sound of frequencies 256 Hz and 260 Hz are sounded together.

(a) Define the term "beat". *(2 marks)*

(b) Calculate the beat frequency. *(3 marks)*

(c) State how beats are produced. *(3 marks)*

(d) Give one application of beats. *(2 marks)*

---

## SECTION C: ELECTRICITY AND MAGNETISM

**Q5.** A capacitor of capacitance 50 µF is connected to a 200 V supply.

(a) Define capacitance. *(2 marks)*

(b) Calculate the charge stored on the capacitor. *(3 marks)*

(c) Calculate the energy stored in the capacitor. *(3 marks)*

(d) The capacitor is discharged through a resistor. State how the charge varies with time. *(2 marks)*

---

**Q6.** A transformer has 400 turns in its primary and 40 turns in its secondary. The primary is connected to a 240 V a.c. supply and draws a current of 0.5 A. The transformer is 100% efficient.

(a) State the transformer equation relating voltages and turns. *(2 marks)*

(b) Calculate the secondary voltage. *(3 marks)*

(c) Calculate the secondary current. *(3 marks)*

(d) State two ways of reducing energy losses in a transformer. *(2 marks)*

---

## SECTION D: MODERN PHYSICS

**Q7.** The de Broglie wavelength of an electron is 1.2 × 10⁻¹⁰ m. (h = 6.63 × 10⁻³⁴ J s, mₑ = 9.1 × 10⁻³¹ kg)

(a) State the de Broglie hypothesis. *(2 marks)*

(b) Calculate the momentum of the electron. *(3 marks)*

(c) Calculate the speed of the electron. *(3 marks)*

(d) State one piece of evidence for the wave nature of particles. *(2 marks)*

---

**Q8.** A radioactive isotope of iodine-131 has a half-life of 8 days and is used in medicine.

(a) Define the term "half-life". *(2 marks)*

(b) A sample has an initial activity of 1600 Bq. Calculate the activity after 24 days. *(4 marks)*

(c) State one medical use of iodine-131. *(2 marks)*

(d) Explain why gamma radiation is used for imaging rather than alpha radiation. *(3 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics structured set 4',
    updated_at = NOW()
WHERE id = 'b749a206-244c-665f-3754-05e318284a31';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MECHANICS

**Q1.** A body of mass 2 kg is attached to a string and whirled in a horizontal circle of radius 0.8 m with a speed of 6 m/s.

(a) Define centripetal acceleration. *(2 marks)*

(b) Calculate the centripetal acceleration of the body. *(3 marks)*

(c) Calculate the tension in the string. *(3 marks)*

(d) State what happens to the tension if the speed is doubled. *(2 marks)*

---

**Q2.** A ball of mass 0.1 kg is dropped from a height of 5 m and rebounds to a height of 3.2 m. (g = 10 m/s²)

(a) Calculate the velocity of the ball just before impact. *(3 marks)*

(b) Calculate the velocity of the ball just after impact. *(3 marks)*

(c) Calculate the coefficient of restitution. *(3 marks)*

(d) State what is meant by an inelastic collision. *(2 marks)*

---

## SECTION B: THERMAL PHYSICS

**Q3.** 0.2 kg of a liquid at 80 °C is mixed with 0.3 kg of water at 20 °C. The final temperature of the mixture is 30 °C. (Specific heat capacity of water = 4200 J/kg K)

(a) Define specific heat capacity. *(2 marks)*

(b) Calculate the heat gained by the cold water. *(3 marks)*

(c) Calculate the specific heat capacity of the liquid. *(5 marks)*

(d) State one assumption made in the calculation. *(2 marks)*

---

**Q4.** A gas is compressed adiabatically from a volume of 0.04 m³ to 0.01 m³.

(a) State what is meant by an adiabatic process. *(2 marks)*

(b) State the first law of thermodynamics. *(2 marks)*

(c) Explain why the temperature of the gas rises during adiabatic compression. *(3 marks)*

(d) State two differences between an isothermal and an adiabatic process. *(4 marks)*

---

## SECTION C: ELECTRICITY AND MAGNETISM

**Q5.** A cell of e.m.f. 2 V and internal resistance 1 Ω is connected to a 3 Ω resistor.

(a) Define internal resistance. *(2 marks)*

(b) Calculate the current in the circuit. *(3 marks)*

(c) Calculate the terminal voltage of the cell. *(3 marks)*

(d) Calculate the power dissipated in the internal resistance. *(3 marks)*

---

**Q6.** A solenoid of length 0.2 m has 500 turns and carries a current of 2 A. (μ₀ = 4π × 10⁻⁷ H/m)

(a) State the formula for the magnetic flux density inside a solenoid. *(2 marks)*

(b) Calculate the magnetic flux density inside the solenoid. *(4 marks)*

(c) State the unit of magnetic flux density. *(1 mark)*

(d) State what happens to the flux density if the current is doubled. *(2 marks)*

---

## SECTION D: MODERN PHYSICS

**Q7.** The work function of a metal is 2.0 eV. Light of wavelength 5.0 × 10⁻⁷ m is incident on the metal. (h = 6.63 × 10⁻³⁴ J s, c = 3 × 10⁸ m/s, 1 eV = 1.6 × 10⁻¹⁹ J)

(a) Define the work function. *(2 marks)*

(b) Calculate the energy of the incident photon in eV. *(4 marks)*

(c) Determine whether photoelectric emission occurs. *(3 marks)*

(d) State what is meant by the threshold frequency. *(2 marks)*

---

**Q8.** A radioactive sample has an initial activity of 3200 Bq and a half-life of 5 days.

(a) Define the term "activity". *(2 marks)*

(b) Calculate the activity after 15 days. *(4 marks)*

(c) State two properties of gamma radiation. *(2 marks)*

(d) Explain why a chain reaction in a nuclear reactor is controlled. *(3 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics structured set 5',
    updated_at = NOW()
WHERE id = 'f326ed51-a581-adee-b819-7629eba63095';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MECHANICS

**Q1.** A body of mass 4 kg is pulled along a rough horizontal surface by a force of 20 N. The coefficient of friction between the body and the surface is 0.3. (g = 10 m/s²)

(a) Define the coefficient of friction. *(2 marks)*

(b) Calculate the normal reaction on the body. *(3 marks)*

(c) Calculate the frictional force. *(3 marks)*

(d) Calculate the acceleration of the body. *(3 marks)*

---

**Q2.** A body of mass 3 kg moving at 4 m/s collides with a stationary body of mass 2 kg. After collision, the two bodies move together.

(a) State the principle of conservation of momentum. *(2 marks)*

(b) Calculate the common velocity after collision. *(4 marks)*

(c) Calculate the kinetic energy lost during the collision. *(4 marks)*

(d) State whether the collision is elastic or inelastic, giving a reason. *(2 marks)*

---

## SECTION B: WAVES AND OPTICS

**Q3.** A sound wave has a frequency of 340 Hz and travels at 340 m/s.

(a) Calculate the wavelength of the sound wave. *(3 marks)*

(b) State two differences between sound waves and light waves. *(4 marks)*

(c) Explain why sound cannot travel through a vacuum. *(2 marks)*

(d) State one application of ultrasound. *(2 marks)*

---

**Q4.** A converging lens of focal length 20 cm forms an image of an object placed 30 cm from the lens.

(a) State the lens formula. *(2 marks)*

(b) Calculate the image distance. *(4 marks)*

(c) State the nature of the image formed. *(2 marks)*

(d) Calculate the magnification. *(3 marks)*

---

## SECTION C: ELECTRICITY AND MAGNETISM

**Q5.** A resistor of 10 Ω is connected to a 12 V battery of negligible internal resistance.

(a) Calculate the current through the resistor. *(3 marks)*

(b) Calculate the power dissipated in the resistor. *(3 marks)*

(c) Calculate the energy dissipated in 2 minutes. *(3 marks)*

(d) State the unit of electrical energy. *(1 mark)*

---

**Q6.** A wire of length 0.5 m carrying a current of 4 A is placed perpendicular to a magnetic field of flux density 0.2 T.

(a) State the formula for the force on a current-carrying conductor in a magnetic field. *(2 marks)*

(b) Calculate the force on the wire. *(3 marks)*

(c) State what happens to the force if the wire is placed parallel to the field. *(2 marks)*

(d) State the direction of the force using Fleming's left-hand rule. *(3 marks)*

---

## SECTION D: MODERN PHYSICS

**Q7.** A photon has a frequency of 5.0 × 10¹⁴ Hz. (h = 6.63 × 10⁻³⁴ J s)

(a) Calculate the energy of the photon in joules. *(3 marks)*

(b) Calculate the energy of the photon in eV. (1 eV = 1.6 × 10⁻¹⁹ J) *(3 marks)*

(c) State what is meant by the photon model of light. *(2 marks)*

(d) State one piece of evidence for the particle nature of light. *(2 marks)*

---

**Q8.** A radioactive isotope has a half-life of 2 days. A sample has an initial mass of 64 g.

(a) Define the term "half-life". *(2 marks)*

(b) Calculate the mass remaining after 6 days. *(4 marks)*

(c) State two properties of beta radiation. *(2 marks)*

(d) Explain how a smoke detector uses a radioactive source. *(3 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics structured set 6',
    updated_at = NOW()
WHERE id = '74774aa7-4a5d-8c95-9f68-e1296812d15d';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MECHANICS

**Q1.** A body of mass 2 kg is projected vertically upwards with a speed of 30 m/s. (g = 10 m/s²)

(a) State the principle of conservation of energy. *(2 marks)*

(b) Calculate the maximum height reached by the body. *(4 marks)*

(c) Calculate the kinetic energy of the body after 2 s. *(4 marks)*

(d) State what happens to the total mechanical energy of the body during its flight. *(2 marks)*

---

**Q2.** A car of mass 1000 kg is moving at 20 m/s. The driver applies the brakes and the car comes to rest in 5 s.

(a) Define momentum. *(2 marks)*

(b) Calculate the initial momentum of the car. *(3 marks)*

(c) Calculate the braking force. *(4 marks)*

(d) Calculate the stopping distance. *(3 marks)*

---

## SECTION B: THERMAL PHYSICS

**Q3.** 0.1 kg of steam at 100 °C is condensed into water at 100 °C. (Specific latent heat of vaporisation of water = 2.26 × 10⁶ J/kg)

(a) Define specific latent heat of vaporisation. *(2 marks)*

(b) Calculate the heat released when the steam condenses. *(3 marks)*

(c) The water formed is then cooled to 20 °C. Calculate the heat released. (Specific heat capacity of water = 4200 J/kg K) *(4 marks)*

(d) State one application of the high latent heat of vaporisation of water. *(2 marks)*

---

**Q4.** A gas is contained in a cylinder fitted with a movable piston. The gas is heated at constant pressure.

(a) State Charles's law. *(2 marks)*

(b) Explain what happens to the volume of the gas when it is heated at constant pressure. *(3 marks)*

(c) State the relationship between the pressure and temperature of a gas at constant volume. *(2 marks)*

(d) State two assumptions of the kinetic theory of gases. *(3 marks)*

---

## SECTION C: ELECTRICITY AND MAGNETISM

**Q5.** Two resistors of 4 Ω and 6 Ω are connected in series across a 20 V supply.

(a) Calculate the total resistance of the circuit. *(3 marks)*

(b) Calculate the current in the circuit. *(3 marks)*

(c) Calculate the potential difference across the 6 Ω resistor. *(3 marks)*

(d) Calculate the power dissipated in the 4 Ω resistor. *(3 marks)*

---

**Q6.** A coil of 100 turns and area 0.02 m² rotates in a magnetic field of flux density 0.4 T.

(a) Define magnetic flux linkage. *(2 marks)*

(b) Calculate the maximum magnetic flux linkage of the coil. *(4 marks)*

(c) State the principle of operation of an a.c. generator. *(3 marks)*

(d) State one way of increasing the e.m.f. generated. *(2 marks)*

---

## SECTION D: MODERN PHYSICS

**Q7.** The threshold frequency of a metal is 6.0 × 10¹⁴ Hz. (h = 6.63 × 10⁻³⁴ J s)

(a) Define the threshold frequency. *(2 marks)*

(b) Calculate the work function of the metal in joules. *(3 marks)*

(c) Calculate the work function in eV. (1 eV = 1.6 × 10⁻¹⁹ J) *(3 marks)*

(d) State what happens to the emitted electrons if the frequency of light is increased. *(2 marks)*

---

**Q8.** A radioactive isotope of carbon-14 has a half-life of 5730 years.

(a) Define the term "half-life". *(2 marks)*

(b) A sample initially contains 8 g of carbon-14. Calculate the mass remaining after 17190 years. *(4 marks)*

(c) State the type of radiation emitted by carbon-14. *(2 marks)*

(d) Explain how carbon-14 dating is used to date archaeological remains. *(4 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics structured set 7',
    updated_at = NOW()
WHERE id = '1cbb58d1-7aaa-89bc-bd88-4b6dff740b1e';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL PHYSICS P2 SET 8

## Structural Question Bank - Set 8

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MECHANICS

**Q1.** A body of mass 0.5 kg is attached to a string of length 1 m and whirled in a vertical circle with a constant speed of 4 m/s. (g = 10 m/s²)

(a) State the direction of the centripetal force. *(2 marks)*

(b) Calculate the centripetal force on the body. *(3 marks)*

(c) Calculate the tension in the string at the top of the circle. *(4 marks)*

(d) Calculate the tension in the string at the bottom of the circle. *(4 marks)*

---

**Q2.** A body of mass 2 kg moving at 6 m/s collides elastically with a stationary body of mass 1 kg.

(a) State the two conservation laws that apply to an elastic collision. *(2 marks)*

(b) Calculate the total momentum before the collision. *(3 marks)*

(c) State what is meant by a perfectly elastic collision. *(2 marks)*

(d) Explain why kinetic energy is conserved in an elastic collision. *(3 marks)*

---

## SECTION B: WAVES AND OPTICS

**Q3.** A progressive wave is represented by the equation y = 0.02 sin(2π(100t − x/2)) where x and y are in metres and t is in seconds.

(a) State the amplitude of the wave. *(2 marks)*

(b) State the frequency of the wave. *(3 marks)*

(c) Calculate the wavelength of the wave. *(3 marks)*

(d) Calculate the speed of the wave. *(3 marks)*

---

**Q4.** In a Young's double-slit experiment, the slit separation is 0.4 mm and the screen is 1.5 m from the slits. The fringe separation is 2.4 mm.

(a) State the formula for fringe separation. *(2 marks)*

(b) Calculate the wavelength of the light used. *(4 marks)*

(c) State what happens to the fringe separation if the screen is moved further away. *(2 marks)*

(d) State what is meant by coherent sources. *(2 marks)*

---

## SECTION C: ELECTRICITY AND MAGNETISM

**Q5.** A capacitor of capacitance 100 µF is charged to a potential difference of 50 V.

(a) Calculate the charge stored on the capacitor. *(3 marks)*

(b) Calculate the energy stored in the capacitor. *(3 marks)*

(c) The capacitor is connected in series with a 1 kΩ resistor. State how the charge decays with time. *(2 marks)*

(d) Calculate the time constant of the circuit. *(3 marks)*

---

**Q6.** A step-up transformer has 100 turns in its primary and 1000 turns in its secondary. The primary is connected to a 12 V a.c. supply.

(a) State the transformer equation. *(2 marks)*

(b) Calculate the secondary voltage. *(3 marks)*

(c) If the secondary current is 0.2 A and the transformer is 100% efficient, calculate the primary current. *(4 marks)*

(d) State one reason why transformers are used in power transmission. *(2 marks)*

---

## SECTION D: MODERN PHYSICS

**Q7.** The de Broglie wavelength of a particle is 2.0 × 10⁻¹⁰ m. (h = 6.63 × 10⁻³⁴ J s)

(a) State the de Broglie hypothesis. *(2 marks)*

(b) Calculate the momentum of the particle. *(3 marks)*

(c) If the particle is an electron of mass 9.1 × 10⁻³¹ kg, calculate its speed. *(3 marks)*

(d) State one application of electron diffraction. *(2 marks)*

---

**Q8.** A radioactive sample has an initial activity of 6400 Bq and a half-life of 3 days.

(a) Define the term "activity". *(2 marks)*

(b) Calculate the activity after 9 days. *(4 marks)*

(c) State two differences between alpha and gamma radiation. *(4 marks)*

(d) Explain why a moderator is used in a nuclear reactor. *(3 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Physics structured set 8',
    updated_at = NOW()
WHERE id = '66814cd0-7557-3845-9a6b-e38459deefb4';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ORDINARY LEVEL PHYSICS — P1 (Multiple Choice) — Form 5
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The SI unit of force is the:

A. newton  
B. joule  
C. watt  
D. pascal  

---

**Q2.** The instrument used to measure the volume of a liquid accurately is:

A. a metre rule  
B. a measuring cylinder  
C. a thermometer  
D. a spring balance  

---

**Q3.** The density of a substance is defined as:

A. mass per unit volume  
B. volume per unit mass  
C. weight per unit volume  
D. mass per unit area  

---

**Q4.** A body of mass 2 kg has a weight of (g = 10 m/s²):

A. 2 N  
B. 5 N  
C. 20 N  
D. 200 N  

---

**Q5.** The force that opposes the motion of a body on a surface is:

A. gravity  
B. friction  
C. tension  
D. upthrust  

---

**Q6.** The rate of change of velocity is called:

A. speed  
B. acceleration  
C. momentum  
D. displacement  

---

**Q7.** A car travels 60 km in 2 hours. Its average speed is:

A. 30 km/h  
B. 60 km/h  
C. 120 km/h  
D. 15 km/h  

---

**Q8.** The energy possessed by a body due to its motion is:

A. potential energy  
B. kinetic energy  
C. chemical energy  
D. heat energy  

---

**Q9.** The work done when a force of 10 N moves a body 5 m in the direction of the force is:

A. 2 J  
B. 15 J  
C. 50 J  
D. 500 J  

---

**Q10.** The pressure exerted by a liquid depends on:

A. the depth and density of the liquid  
B. the volume of the liquid  
C. the surface area only  
D. the shape of the container  

---

**Q11.** Heat is transferred through a solid metal rod mainly by:

A. convection  
B. conduction  
C. radiation  
D. evaporation  

---

**Q12.** The temperature at which a solid changes to a liquid is called its:

A. boiling point  
B. melting point  
C. freezing point  
D. condensation point  

---

**Q13.** Sound waves are:

A. transverse waves  
B. longitudinal waves  
C. electromagnetic waves  
D. stationary waves  

---

**Q14.** The speed of light in a vacuum is approximately:

A. 340 m/s  
B. 3 × 10⁸ m/s  
C. 3 × 10⁶ m/s  
D. 1500 m/s  

---

**Q15.** The bending of light as it passes from one medium to another is called:

A. reflection  
B. refraction  
C. diffraction  
D. dispersion  

---

**Q16.** The unit of electric current is the:

A. volt  
B. ohm  
C. ampere  
D. watt  

---

**Q17.** The resistance of a wire depends on all of the following EXCEPT:

A. its length  
B. its cross-sectional area  
C. its material  
D. the current through it  

---

**Q18.** A simple electric circuit consists of a cell, a bulb and a switch connected in:

A. parallel  
B. series  
C. a complex network  
D. an open loop  

---

**Q19.** The device used to measure electric current is:

A. a voltmeter  
B. an ammeter  
C. a thermometer  
D. a barometer  

---

**Q20.** A magnet has:

A. one pole  
B. two poles  
C. three poles  
D. no poles  

---

**Q21.** The north pole of a magnet attracts:

A. the north pole of another magnet  
B. the south pole of another magnet  
C. a piece of plastic  
D. a piece of wood  

---

**Q22.** The process by which a magnet is produced by stroking a piece of iron with a magnet is called:

A. induction  
B. magnetization  
C. demagnetization  
D. conduction  

---

**Q23.** The nucleus of an atom contains:

A. protons and electrons  
B. protons and neutrons  
C. neutrons and electrons  
D. only electrons  

---

**Q24.** The number of protons in the nucleus of an atom is called the:

A. mass number  
B. atomic number  
C. neutron number  
D. electron number  

---

**Q25.** The device used to measure atmospheric pressure is:

A. a thermometer  
B. a barometer  
C. a hydrometer  
D. a manometer  

---

## ANSWER KEY

1. A  2. B  3. A  4. C  5. B  6. B  7. A  8. B  9. C  10. A  
11. B  12. B  13. B  14. B  15. B  16. C  17. D  18. B  19. B  20. B  
21. B  22. B  23. B  24. B  25. B
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics MCQ set 1',
    updated_at = NOW()
WHERE id = 'ef3417fb-a83b-5b95-eaea-5d684b3420d2';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The SI unit of pressure is the:

A. newton  
B. pascal  
C. joule  
D. watt  

---

**Q2.** The instrument used to measure the mass of a body is:

A. a spring balance  
B. a beam balance  
C. a measuring cylinder  
D. a thermometer  

---

**Q3.** A body floats in a liquid when:

A. its density is greater than the liquid  
B. its density is less than the liquid  
C. its weight is greater than the upthrust  
D. its volume is greater than the liquid  

---

**Q4.** The turning effect of a force is called:

A. momentum  
B. moment  
C. impulse  
D. work  

---

**Q5.** The moment of a force is calculated by:

A. force × distance  
B. force ÷ distance  
C. force + distance  
D. force − distance  

---

**Q6.** A body moving with uniform velocity has:

A. constant speed and constant direction  
B. changing speed  
C. changing direction  
D. zero speed  

---

**Q7.** The acceleration of a body falling freely under gravity is approximately:

A. 9.8 m/s²  
B. 340 m/s²  
C. 3 × 10⁸ m/s²  
D. 0 m/s²  

---

**Q8.** The energy stored in a stretched spring is:

A. kinetic energy  
B. elastic potential energy  
C. chemical energy  
D. nuclear energy  

---

**Q9.** Power is defined as:

A. work done per unit time  
B. force per unit area  
C. energy per unit volume  
D. distance per unit time  

---

**Q10.** The unit of power is the:

A. joule  
B. newton  
C. watt  
D. pascal  

---

**Q11.** Convection currents occur mainly in:

A. solids  
B. liquids and gases  
C. metals  
D. a vacuum  

---

**Q12.** Heat from the sun reaches the Earth by:

A. conduction  
B. convection  
C. radiation  
D. evaporation  

---

**Q13.** The pitch of a sound depends on its:

A. amplitude  
B. frequency  
C. speed  
D. wavelength  

---

**Q14.** The loudness of a sound depends on its:

A. frequency  
B. amplitude  
C. speed  
D. wavelength  

---

**Q15.** The image formed by a plane mirror is:

A. real and inverted  
B. virtual and upright  
C. real and upright  
D. virtual and inverted  

---

**Q16.** The unit of electrical resistance is the:

A. volt  
B. ohm  
C. ampere  
D. coulomb  

---

**Q17.** Ohm's law states that:

A. V = IR  
B. V = I/R  
C. V = R/I  
D. V = I + R  

---

**Q18.** Two resistors of 2 Ω and 3 Ω connected in series have a total resistance of:

A. 1.2 Ω  
B. 5 Ω  
C. 6 Ω  
D. 0.8 Ω  

---

**Q19.** The device used to measure potential difference is:

A. an ammeter  
B. a voltmeter  
C. a galvanometer  
D. a hydrometer  

---

**Q20.** Like poles of magnets:

A. attract each other  
B. repel each other  
C. have no effect  
D. neutralize each other  

---

**Q21.** A magnetic field is a region where:

A. electric charges experience a force  
B. magnetic materials experience a force  
C. light is refracted  
D. sound is produced  

---

**Q22.** The direction of the magnetic field around a straight current-carrying conductor is given by:

A. Fleming's left-hand rule  
B. the right-hand grip rule  
C. the left-hand grip rule  
D. Lenz's law  

---

**Q23.** An atom is electrically neutral because:

A. it has equal numbers of protons and electrons  
B. it has equal numbers of protons and neutrons  
C. it has no protons  
D. it has no electrons  

---

**Q24.** The mass number of an atom is the total number of:

A. protons and electrons  
B. protons and neutrons  
C. neutrons and electrons  
D. protons only  

---

**Q25.** The instrument used to measure the density of a liquid is:

A. a barometer  
B. a hydrometer  
C. a manometer  
D. a thermometer  

---

## ANSWER KEY

1. B  2. B  3. B  4. B  5. A  6. A  7. A  8. B  9. A  10. C  
11. B  12. C  13. B  14. B  15. B  16. B  17. A  18. B  19. B  20. B  
21. B  22. B  23. A  24. B  25. B
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics MCQ set 2',
    updated_at = NOW()
WHERE id = '105a599b-9790-edaa-7eff-fcba7bf0473a';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The SI unit of energy is the:

A. newton  
B. joule  
C. watt  
D. pascal  

---

**Q2.** The instrument used to measure time accurately is:

A. a stopwatch  
B. a metre rule  
C. a thermometer  
D. a spring balance  

---

**Q3.** The volume of a regular solid can be calculated by:

A. length × width × height  
B. mass ÷ density  
C. weight × height  
D. force × distance  

---

**Q4.** A body of volume 0.5 m³ and density 2000 kg/m³ has a mass of:

A. 400 kg  
B. 1000 kg  
C. 250 kg  
D. 2000 kg  

---

**Q5.** The SI unit of density is:

A. kg/m³  
B. kg/m²  
C. g/cm³  
D. N/m³  

---

**Q6.** A body is in equilibrium when:

A. the resultant force is zero  
B. the resultant force is maximum  
C. it is moving at constant speed  
D. it is accelerating  

---

**Q7.** The principle of moments states that for a body in equilibrium:

A. the sum of clockwise moments equals the sum of anticlockwise moments  
B. the sum of all forces is maximum  
C. the moments are always zero  
D. the forces are equal  

---

**Q8.** The kinetic energy of a body depends on:

A. its mass and velocity  
B. its mass and height  
C. its weight and volume  
D. its density and area  

---

**Q9.** A body of mass 4 kg moving at 3 m/s has kinetic energy of:

A. 6 J  
B. 12 J  
C. 18 J  
D. 36 J  

---

**Q10.** The pressure at a point in a liquid increases with:

A. depth  
B. surface area  
C. temperature  
D. volume  

---

**Q11.** A good conductor of heat is:

A. wood  
B. copper  
C. plastic  
D. air  

---

**Q12.** Evaporation causes:

A. cooling  
B. heating  
C. no temperature change  
D. condensation  

---

**Q13.** The speed of sound in air is approximately:

A. 340 m/s  
B. 3 × 10⁸ m/s  
C. 1500 m/s  
D. 100 m/s  

---

**Q14.** The reflection of sound that produces an echo occurs when:

A. sound is absorbed  
B. sound bounces off a hard surface  
C. sound passes through a medium  
D. sound is refracted  

---

**Q15.** A convex lens is also called a:

A. diverging lens  
B. converging lens  
C. plane lens  
D. concave mirror  

---

**Q16.** The unit of electric charge is the:

A. volt  
B. coulomb  
C. ampere  
D. ohm  

---

**Q17.** The current in a circuit is measured in:

A. volts  
B. amperes  
C. ohms  
D. watts  

---

**Q18.** Two resistors of 6 Ω and 3 Ω connected in parallel have a total resistance of:

A. 9 Ω  
B. 2 Ω  
C. 18 Ω  
D. 0.5 Ω  

---

**Q19.** The heating effect of an electric current is used in:

A. an electric fan  
B. an electric kettle  
C. a dynamo  
D. a transformer  

---

**Q20.** The magnetic effect of an electric current is used in:

A. an electric bell  
B. an electric heater  
C. a bulb  
D. a fuse  

---

**Q21.** A temporary magnet is produced by:

A. magnetization  
B. demagnetization  
C. induction  
D. conduction  

---

**Q22.** The Earth behaves like a magnet with its magnetic north pole near the:

A. geographic north pole  
B. geographic south pole  
C. equator  
D. centre  

---

**Q23.** The electron is a particle with:

A. a positive charge  
B. a negative charge  
C. no charge  
D. a large mass  

---

**Q24.** The proton is a particle with:

A. a negative charge  
B. a positive charge  
C. no charge  
D. a very small mass  

---

**Q25.** The device used to detect the presence of electric charge is:

A. a galvanometer  
B. an electroscope  
C. a voltmeter  
D. a barometer  

---

## ANSWER KEY

1. B  2. A  3. A  4. B  5. A  6. A  7. A  8. A  9. C  10. A  
11. B  12. A  13. A  14. B  15. B  16. B  17. B  18. B  19. B  20. A  
21. C  22. B  23. B  24. B  25. B
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics MCQ set 3',
    updated_at = NOW()
WHERE id = '222f13e6-6a31-a069-8bb9-3a071108d767';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ORDINARY LEVEL PHYSICS — P2 (Structured) — Form 5
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MEASUREMENT AND MECHANICS

**Q1.** A student measures the length of a table using a metre rule and records 1.25 m.

(a) State the SI unit of length. *(1 mark)*

(b) State the instrument used to measure the internal diameter of a test tube. *(2 marks)*

(c) A block has dimensions 0.2 m × 0.1 m × 0.05 m. Calculate its volume. *(3 marks)*

(d) If the block has a mass of 2 kg, calculate its density. *(3 marks)*

---

**Q2.** A car accelerates uniformly from rest to a speed of 20 m/s in 10 s.

(a) Define acceleration. *(2 marks)*

(b) Calculate the acceleration of the car. *(3 marks)*

(c) Calculate the distance travelled by the car in 10 s. *(3 marks)*

(d) State the unit of acceleration. *(1 mark)*

---

**Q3.** A force of 30 N is applied to a body of mass 6 kg.

(a) State Newton's second law of motion. *(2 marks)*

(b) Calculate the acceleration of the body. *(3 marks)*

(c) Calculate the weight of the body. (g = 10 m/s²) *(3 marks)*

(d) State the difference between mass and weight. *(2 marks)*

---

## SECTION B: THERMAL PHYSICS

**Q4.** 0.5 kg of water at 20 °C is heated to 80 °C. (Specific heat capacity of water = 4200 J/kg K)

(a) Define specific heat capacity. *(2 marks)*

(b) Calculate the heat energy required. *(4 marks)*

(c) State the unit of heat energy. *(1 mark)*

(d) State one reason why water is used as a coolant. *(2 marks)*

---

**Q5.** A metal rod is heated at one end and the other end becomes hot.

(a) Name the method of heat transfer involved. *(1 mark)*

(b) State two differences between conduction and convection. *(4 marks)*

(c) State one application of radiation. *(2 marks)*

(d) Explain why a black surface is a better radiator than a shiny surface. *(2 marks)*

---

## SECTION C: WAVES, LIGHT AND SOUND

**Q6.** A sound wave has a frequency of 200 Hz and a wavelength of 1.7 m.

(a) State the relationship between speed, frequency and wavelength. *(2 marks)*

(b) Calculate the speed of the sound wave. *(3 marks)*

(c) State whether sound is a transverse or longitudinal wave. *(1 mark)*

(d) State one application of ultrasound. *(2 marks)*

---

**Q7.** A ray of light strikes a plane mirror at an angle of incidence of 40°.

(a) State the law of reflection. *(2 marks)*

(b) Calculate the angle of reflection. *(2 marks)*

(c) State the angle between the incident ray and the reflected ray. *(2 marks)*

(d) State the nature of the image formed by a plane mirror. *(2 marks)*

---

## SECTION D: ELECTRICITY AND MAGNETISM

**Q8.** A circuit consists of a 6 V battery and a 3 Ω resistor.

(a) State Ohm's law. *(2 marks)*

(b) Calculate the current flowing in the circuit. *(3 marks)*

(c) Calculate the power dissipated in the resistor. *(3 marks)*

(d) State the unit of electrical power. *(1 mark)*

---

**Q9.** A bar magnet is brought near a piece of soft iron.

(a) State what happens to the soft iron. *(2 marks)*

(b) Name the process by which the soft iron becomes a magnet. *(2 marks)*

(c) State two differences between a permanent magnet and a temporary magnet. *(4 marks)*

(d) State one use of an electromagnet. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics structured set 1',
    updated_at = NOW()
WHERE id = '59f323c2-2636-827a-0d0c-bde3f40cef2d';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MEASUREMENT AND MECHANICS

**Q1.** A student uses a measuring cylinder to find the volume of a stone.

(a) State the initial reading of the measuring cylinder. *(1 mark)*

(b) Explain how the volume of the stone is determined. *(3 marks)*

(c) If the stone has a mass of 60 g and a volume of 20 cm³, calculate its density. *(3 marks)*

(d) State the unit of density. *(1 mark)*

---

**Q2.** A body of mass 5 kg is lifted through a height of 2 m. (g = 10 m/s²)

(a) Define work. *(2 marks)*

(b) Calculate the work done in lifting the body. *(3 marks)*

(c) Calculate the potential energy gained by the body. *(3 marks)*

(d) State the unit of work. *(1 mark)*

---

**Q3.** A force of 20 N acts on a body and moves it 4 m in the direction of the force in 2 s.

(a) Calculate the work done. *(3 marks)*

(b) Calculate the power developed. *(3 marks)*

(c) State the unit of power. *(1 mark)*

(d) State two factors that affect the kinetic energy of a body. *(2 marks)*

---

## SECTION B: THERMAL PHYSICS

**Q4.** 0.2 kg of ice at 0 °C is melted completely. (Specific latent heat of fusion of ice = 3.34 × 10⁵ J/kg)

(a) Define specific latent heat of fusion. *(2 marks)*

(b) Calculate the heat required to melt the ice. *(4 marks)*

(c) State the temperature at which ice melts at normal atmospheric pressure. *(1 mark)*

(d) State one application of the high latent heat of fusion of ice. *(2 marks)*

---

**Q5.** A liquid is heated in a beaker and its temperature is recorded at regular intervals.

(a) State the instrument used to measure temperature. *(1 mark)*

(b) State what happens to the temperature of a pure liquid while it is boiling. *(2 marks)*

(c) State two differences between evaporation and boiling. *(4 marks)*

(d) State one factor that increases the rate of evaporation. *(2 marks)*

---

## SECTION C: WAVES, LIGHT AND SOUND

**Q6.** A wave has a frequency of 50 Hz and a wavelength of 6 m.

(a) State the formula relating speed, frequency and wavelength. *(2 marks)*

(b) Calculate the speed of the wave. *(3 marks)*

(c) State two examples of transverse waves. *(2 marks)*

(d) State two examples of longitudinal waves. *(2 marks)*

---

**Q7.** An object is placed 20 cm in front of a plane mirror.

(a) State the distance of the image from the mirror. *(2 marks)*

(b) State the nature of the image formed. *(2 marks)*

(c) State two characteristics of the image formed by a plane mirror. *(4 marks)*

(d) State one use of a plane mirror. *(2 marks)*

---

## SECTION D: ELECTRICITY AND MAGNETISM

**Q8.** A circuit has a 12 V battery and two resistors of 4 Ω and 8 Ω connected in series.

(a) Calculate the total resistance of the circuit. *(3 marks)*

(b) Calculate the current flowing in the circuit. *(3 marks)*

(c) Calculate the potential difference across the 8 Ω resistor. *(3 marks)*

(d) State the unit of resistance. *(1 mark)*

---

**Q9.** A current-carrying conductor is placed in a magnetic field.

(a) State the force that acts on the conductor. *(2 marks)*

(b) State the rule used to determine the direction of the force. *(2 marks)*

(c) State two factors that affect the magnitude of the force. *(4 marks)*

(d) State one application of the force on a current-carrying conductor in a magnetic field. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics structured set 2',
    updated_at = NOW()
WHERE id = '5f2685ca-5ffb-2024-2114-8c5492c88f10';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MEASUREMENT AND MECHANICS

**Q1.** A body of mass 2 kg is acted upon by a force of 8 N.

(a) State Newton's second law of motion. *(2 marks)*

(b) Calculate the acceleration of the body. *(3 marks)*

(c) If the body starts from rest, calculate its velocity after 5 s. *(3 marks)*

(d) Calculate the distance travelled in 5 s. *(3 marks)*

---

**Q2.** A uniform metre rule is balanced at its centre.

(a) State the principle of moments. *(2 marks)*

(b) A weight of 2 N is placed at the 20 cm mark. Calculate the moment about the centre. *(3 marks)*

(c) Calculate the force needed at the 80 cm mark to balance the rule. *(4 marks)*

(d) State the unit of moment. *(1 mark)*

---

**Q3.** A body of mass 3 kg is moving with a velocity of 4 m/s.

(a) Define momentum. *(2 marks)*

(b) Calculate the momentum of the body. *(3 marks)*

(c) State the unit of momentum. *(1 mark)*

(d) State the principle of conservation of momentum. *(3 marks)*

---

## SECTION B: THERMAL PHYSICS

**Q4.** A metal block of mass 0.4 kg and specific heat capacity 900 J/kg K is heated from 25 °C to 75 °C.

(a) Define specific heat capacity. *(2 marks)*

(b) Calculate the heat energy gained by the block. *(4 marks)*

(c) State the unit of specific heat capacity. *(1 mark)*

(d) State one reason why metals are good conductors of heat. *(2 marks)*

---

**Q5.** A liquid evaporates from an open container.

(a) State what is meant by evaporation. *(2 marks)*

(b) State two factors that increase the rate of evaporation. *(4 marks)*

(c) Explain why evaporation causes cooling. *(3 marks)*

(d) State one application of evaporation. *(2 marks)*

---

## SECTION C: WAVES, LIGHT AND SOUND

**Q6.** A ray of light passes from air into water.

(a) Name the phenomenon that occurs. *(1 mark)*

(b) State what happens to the speed of light as it enters water. *(2 marks)*

(c) State what happens to the direction of the ray. *(2 marks)*

(d) State one application of refraction. *(2 marks)*

---

**Q7.** A sound wave travels a distance of 1020 m in 3 s.

(a) Calculate the speed of sound. *(3 marks)*

(b) State the medium in which sound travels fastest. *(2 marks)*

(c) State why sound cannot travel through a vacuum. *(2 marks)*

(d) State one application of sound reflection. *(2 marks)*

---

## SECTION D: ELECTRICITY AND MAGNETISM

**Q8.** A circuit has a 9 V battery and a resistor of 3 Ω.

(a) State Ohm's law. *(2 marks)*

(b) Calculate the current flowing in the circuit. *(3 marks)*

(c) Calculate the charge flowing in 2 minutes. *(3 marks)*

(d) State the unit of electric charge. *(1 mark)*

---

**Q9.** An iron nail is stroked with a bar magnet.

(a) State what happens to the iron nail. *(2 marks)*

(b) Name the process involved. *(2 marks)*

(c) State two methods of demagnetizing a magnet. *(4 marks)*

(d) State one use of a permanent magnet. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics structured set 3',
    updated_at = NOW()
WHERE id = '49049b22-fcf1-570c-4638-ac18cf947dc9';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MEASUREMENT AND MECHANICS

**Q1.** A body of mass 4 kg is lifted to a height of 5 m. (g = 10 m/s²)

(a) Define potential energy. *(2 marks)*

(b) Calculate the potential energy gained by the body. *(3 marks)*

(c) If the body is released, calculate its velocity just before hitting the ground. *(4 marks)*

(d) State the principle of conservation of energy. *(2 marks)*

---

**Q2.** A car of mass 800 kg is moving at 15 m/s.

(a) Define kinetic energy. *(2 marks)*

(b) Calculate the kinetic energy of the car. *(3 marks)*

(c) Calculate the work done to bring the car to rest. *(3 marks)*

(d) State the unit of energy. *(1 mark)*

---

**Q3.** A force of 50 N is applied to a body of mass 10 kg on a frictionless surface.

(a) Calculate the acceleration of the body. *(3 marks)*

(b) If the force acts for 4 s, calculate the velocity of the body. *(3 marks)*

(c) Calculate the distance travelled in 4 s. *(3 marks)*

(d) State the relationship between force, mass and acceleration. *(2 marks)*

---

## SECTION B: THERMAL PHYSICS

**Q4.** 0.3 kg of water at 30 °C is heated to 90 °C. (Specific heat capacity of water = 4200 J/kg K)

(a) Define specific heat capacity. *(2 marks)*

(b) Calculate the heat energy required. *(4 marks)*

(c) State the unit of heat energy. *(1 mark)*

(d) State one reason why water is used in a car radiator. *(2 marks)*

---

**Q5.** A piece of ice is placed in a warm room and melts.

(a) State the change of state that occurs. *(1 mark)*

(b) Name the process by which heat is transferred through the air in the room. *(2 marks)*

(c) State two differences between conduction and radiation. *(4 marks)*

(d) State one application of radiation. *(2 marks)*

---

## SECTION C: WAVES, LIGHT AND SOUND

**Q6.** A wave has a speed of 300 m/s and a frequency of 100 Hz.

(a) State the formula relating speed, frequency and wavelength. *(2 marks)*

(b) Calculate the wavelength of the wave. *(3 marks)*

(c) State two characteristics of a wave. *(2 marks)*

(d) State one example of a wave. *(2 marks)*

---

**Q7.** An object is placed 30 cm in front of a convex mirror.

(a) State the nature of the image formed. *(2 marks)*

(b) State the position of the image. *(2 marks)*

(c) State two uses of a convex mirror. *(4 marks)*

(d) State the difference between a real and a virtual image. *(3 marks)*

---

## SECTION D: ELECTRICITY AND MAGNETISM

**Q8.** A circuit has a 6 V battery and two resistors of 2 Ω and 4 Ω connected in parallel.

(a) Calculate the total resistance of the circuit. *(4 marks)*

(b) Calculate the total current drawn from the battery. *(3 marks)*

(c) Calculate the current through the 2 Ω resistor. *(3 marks)*

(d) State the unit of current. *(1 mark)*

---

**Q9.** A magnet is moved into a coil of wire connected to a galvanometer.

(a) State what is observed on the galvanometer. *(2 marks)*

(b) Name the phenomenon that occurs. *(2 marks)*

(c) State two factors that affect the magnitude of the induced current. *(4 marks)*

(d) State one application of electromagnetic induction. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics structured set 4',
    updated_at = NOW()
WHERE id = 'dd15c09d-814c-0da6-d70b-62265571e566';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MEASUREMENT AND MECHANICS

**Q1.** A body of mass 2 kg is projected vertically upwards with a speed of 20 m/s. (g = 10 m/s²)

(a) State the acceleration of the body during its upward motion. *(2 marks)*

(b) Calculate the maximum height reached by the body. *(4 marks)*

(c) Calculate the time taken to reach the maximum height. *(3 marks)*

(d) State what happens to the velocity of the body at its maximum height. *(2 marks)*

---

**Q2.** A force of 15 N acts on a body of mass 3 kg.

(a) Calculate the acceleration of the body. *(3 marks)*

(b) If the body is initially at rest, calculate its velocity after 6 s. *(3 marks)*

(c) Calculate the momentum of the body after 6 s. *(3 marks)*

(d) State the unit of momentum. *(1 mark)*

---

**Q3.** A uniform beam of length 4 m is supported at its centre. A weight of 10 N is placed 1 m from the centre.

(a) State the principle of moments. *(2 marks)*

(b) Calculate the moment of the 10 N weight about the centre. *(3 marks)*

(c) Calculate the force needed at the other end, 2 m from the centre, to balance the beam. *(4 marks)*

(d) State the condition for a body to be in equilibrium. *(2 marks)*

---

## SECTION B: THERMAL PHYSICS

**Q4.** 0.1 kg of steam at 100 °C condenses to water at 100 °C. (Specific latent heat of vaporisation of water = 2.26 × 10⁶ J/kg)

(a) Define specific latent heat of vaporisation. *(2 marks)*

(b) Calculate the heat released when the steam condenses. *(4 marks)*

(c) State the temperature at which water boils at normal atmospheric pressure. *(1 mark)*

(d) State one application of the high latent heat of vaporisation of water. *(2 marks)*

---

**Q5.** A metal spoon in a cup of hot tea becomes hot.

(a) Name the method of heat transfer involved. *(1 mark)*

(b) State two differences between a good conductor and a poor conductor of heat. *(4 marks)*

(c) State one application of a poor conductor of heat. *(2 marks)*

(d) Explain why a vacuum flask reduces heat loss by conduction and convection. *(3 marks)*

---

## SECTION C: WAVES, LIGHT AND SOUND

**Q6.** A sound wave has a frequency of 500 Hz and travels at 340 m/s.

(a) State the formula relating speed, frequency and wavelength. *(2 marks)*

(b) Calculate the wavelength of the sound wave. *(3 marks)*

(c) State two factors that affect the speed of sound in air. *(4 marks)*

(d) State one application of sound. *(2 marks)*

---

**Q7.** A ray of light is incident on a plane mirror at an angle of 30° to the mirror surface.

(a) Calculate the angle of incidence. *(2 marks)*

(b) State the angle of reflection. *(2 marks)*

(c) State the angle between the incident ray and the reflected ray. *(2 marks)*

(d) State one use of a plane mirror. *(2 marks)*

---

## SECTION D: ELECTRICITY AND MAGNETISM

**Q8.** A circuit has a 12 V battery and a resistor of 6 Ω.

(a) State Ohm's law. *(2 marks)*

(b) Calculate the current flowing in the circuit. *(3 marks)*

(c) Calculate the power dissipated in the resistor. *(3 marks)*

(d) State the unit of electrical power. *(1 mark)*

---

**Q9.** A wire carrying a current is placed in a magnetic field.

(a) State the force that acts on the wire. *(2 marks)*

(b) State two factors that affect the magnitude of the force. *(4 marks)*

(c) State the rule used to determine the direction of the force. *(2 marks)*

(d) State one application of the motor effect. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics structured set 5',
    updated_at = NOW()
WHERE id = '8d5ac5cf-76e2-4923-8a7f-73abbe76512a';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MEASUREMENT AND MECHANICS

**Q1.** A body of mass 5 kg is pulled along a horizontal surface by a force of 25 N. The frictional force is 5 N.

(a) Calculate the resultant force on the body. *(3 marks)*

(b) Calculate the acceleration of the body. *(3 marks)*

(c) If the body starts from rest, calculate its velocity after 4 s. *(3 marks)*

(d) State the unit of force. *(1 mark)*

---

**Q2.** A body of mass 2 kg moving at 6 m/s collides with a stationary body of mass 1 kg. After collision, the two bodies move together.

(a) State the principle of conservation of momentum. *(2 marks)*

(b) Calculate the total momentum before the collision. *(3 marks)*

(c) Calculate the common velocity after the collision. *(4 marks)*

(d) State whether the collision is elastic or inelastic. *(2 marks)*

---

**Q3.** A body of mass 3 kg is lifted through a height of 4 m. (g = 10 m/s²)

(a) Calculate the work done in lifting the body. *(3 marks)*

(b) Calculate the potential energy gained by the body. *(3 marks)*

(c) Calculate the power developed if the lifting takes 2 s. *(3 marks)*

(d) State the unit of power. *(1 mark)*

---

## SECTION B: THERMAL PHYSICS

**Q4.** 0.25 kg of water at 25 °C is heated to 75 °C. (Specific heat capacity of water = 4200 J/kg K)

(a) Define specific heat capacity. *(2 marks)*

(b) Calculate the heat energy required. *(4 marks)*

(c) State the unit of specific heat capacity. *(1 mark)*

(d) State one reason why the specific heat capacity of water is high. *(2 marks)*

---

**Q5.** A liquid is heated in a beaker until it boils.

(a) State what is meant by the boiling point of a liquid. *(2 marks)*

(b) State two differences between evaporation and boiling. *(4 marks)*

(c) State one factor that affects the boiling point of a liquid. *(2 marks)*

(d) State one application of boiling. *(2 marks)*

---

## SECTION C: WAVES, LIGHT AND SOUND

**Q6.** A wave has a wavelength of 2 m and a frequency of 150 Hz.

(a) State the formula relating speed, frequency and wavelength. *(2 marks)*

(b) Calculate the speed of the wave. *(3 marks)*

(c) State two examples of transverse waves. *(2 marks)*

(d) State two examples of longitudinal waves. *(2 marks)*

---

**Q7.** An object is placed 15 cm in front of a concave mirror of focal length 10 cm.

(a) State the mirror formula. *(2 marks)*

(b) Calculate the image distance. *(4 marks)*

(c) State the nature of the image formed. *(2 marks)*

(d) State one use of a concave mirror. *(2 marks)*

---

## SECTION D: ELECTRICITY AND MAGNETISM

**Q8.** A circuit has a 6 V battery and two resistors of 3 Ω and 6 Ω connected in series.

(a) Calculate the total resistance of the circuit. *(3 marks)*

(b) Calculate the current flowing in the circuit. *(3 marks)*

(c) Calculate the potential difference across the 6 Ω resistor. *(3 marks)*

(d) State the unit of resistance. *(1 mark)*

---

**Q9.** A bar magnet is suspended freely.

(a) State the direction in which it comes to rest. *(2 marks)*

(b) Name the pole of the magnet that points towards the geographic north. *(2 marks)*

(c) State two properties of a magnet. *(4 marks)*

(d) State one use of a magnet. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics structured set 6',
    updated_at = NOW()
WHERE id = 'd9497e1c-7d04-4a7f-578f-c4c724d2c0dc';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MEASUREMENT AND MECHANICS

**Q1.** A body of mass 4 kg is acted upon by a force of 12 N for 6 s. The body is initially at rest.

(a) Calculate the acceleration of the body. *(3 marks)*

(b) Calculate the velocity of the body after 6 s. *(3 marks)*

(c) Calculate the distance travelled in 6 s. *(3 marks)*

(d) State Newton's second law of motion. *(2 marks)*

---

**Q2.** A body of mass 0.5 kg is dropped from a height of 20 m. (g = 10 m/s²)

(a) Calculate the potential energy of the body at the top. *(3 marks)*

(b) Calculate the velocity of the body just before hitting the ground. *(4 marks)*

(c) State the principle of conservation of energy. *(2 marks)*

(d) State what happens to the kinetic energy as the body falls. *(2 marks)*

---

**Q3.** A uniform metre rule is pivoted at its centre. A weight of 4 N is placed at the 30 cm mark.

(a) State the principle of moments. *(2 marks)*

(b) Calculate the moment of the 4 N weight about the pivot. *(3 marks)*

(c) Calculate the force needed at the 70 cm mark to balance the rule. *(4 marks)*

(d) State the unit of moment. *(1 mark)*

---

## SECTION B: THERMAL PHYSICS

**Q4.** 0.2 kg of a metal of specific heat capacity 500 J/kg K is heated from 20 °C to 70 °C.

(a) Define specific heat capacity. *(2 marks)*

(b) Calculate the heat energy gained by the metal. *(4 marks)*

(c) State the unit of heat energy. *(1 mark)*

(d) State one application of specific heat capacity. *(2 marks)*

---

**Q5.** A hot drink cools down in a cup.

(a) State the main method of heat loss from the surface of the drink. *(2 marks)*

(b) State two ways of reducing heat loss from the drink. *(4 marks)*

(c) State one application of a vacuum flask. *(2 marks)*

(d) Explain why a shiny surface reduces heat loss by radiation. *(3 marks)*

---

## SECTION C: WAVES, LIGHT AND SOUND

**Q6.** A sound wave travels at 340 m/s and has a wavelength of 0.68 m.

(a) State the formula relating speed, frequency and wavelength. *(2 marks)*

(b) Calculate the frequency of the sound wave. *(3 marks)*

(c) State two factors that affect the speed of sound. *(4 marks)*

(d) State one application of sound. *(2 marks)*

---

**Q7.** A ray of light passes from air into a glass block.

(a) Name the phenomenon that occurs. *(1 mark)*

(b) State what happens to the speed of light as it enters the glass. *(2 marks)*

(c) State what happens to the direction of the ray. *(2 marks)*

(d) State one application of refraction. *(2 marks)*

---

## SECTION D: ELECTRICITY AND MAGNETISM

**Q8.** A circuit has a 9 V battery and a resistor of 3 Ω.

(a) State Ohm's law. *(2 marks)*

(b) Calculate the current flowing in the circuit. *(3 marks)*

(c) Calculate the energy dissipated in the resistor in 1 minute. *(4 marks)*

(d) State the unit of electrical energy. *(1 mark)*

---

**Q9.** A coil of wire is connected to a sensitive galvanometer.

(a) State what is observed when a bar magnet is moved into the coil. *(2 marks)*

(b) Name the phenomenon that occurs. *(2 marks)*

(c) State two ways of increasing the induced current. *(4 marks)*

(d) State one application of electromagnetic induction. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics structured set 7',
    updated_at = NOW()
WHERE id = '5abdb5da-3433-7b3e-0479-4cb7caeaa638';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL PHYSICS P2 SET 8

## Structural Question Bank - Set 8

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** science, technical
**Subject:** Physics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MEASUREMENT AND MECHANICS

**Q1.** A body of mass 6 kg is acted upon by a force of 18 N.

(a) Calculate the acceleration of the body. *(3 marks)*

(b) If the body starts from rest, calculate its velocity after 5 s. *(3 marks)*

(c) Calculate the distance travelled in 5 s. *(3 marks)*

(d) State the relationship between force, mass and acceleration. *(2 marks)*

---

**Q2.** A body of mass 2 kg moving at 8 m/s is brought to rest by a constant force in 4 s.

(a) Calculate the initial momentum of the body. *(3 marks)*

(b) Calculate the change in momentum. *(3 marks)*

(c) Calculate the force that brings the body to rest. *(3 marks)*

(d) State the unit of force. *(1 mark)*

---

**Q3.** A body of mass 5 kg is lifted to a height of 3 m. (g = 10 m/s²)

(a) Calculate the work done in lifting the body. *(3 marks)*

(b) Calculate the potential energy gained by the body. *(3 marks)*

(c) Calculate the power developed if the lifting takes 3 s. *(3 marks)*

(d) State the unit of power. *(1 mark)*

---

## SECTION B: THERMAL PHYSICS

**Q4.** 0.15 kg of ice at 0 °C is melted. (Specific latent heat of fusion of ice = 3.34 × 10⁵ J/kg)

(a) Define specific latent heat of fusion. *(2 marks)*

(b) Calculate the heat required to melt the ice. *(4 marks)*

(c) State the temperature at which ice melts. *(1 mark)*

(d) State one application of the high latent heat of fusion of ice. *(2 marks)*

---

**Q5.** A metal rod is heated at one end.

(a) Name the method of heat transfer through the rod. *(1 mark)*

(b) State two differences between conduction and convection. *(4 marks)*

(c) State one application of convection. *(2 marks)*

(d) Explain why a black surface is a better absorber of radiation than a white surface. *(3 marks)*

---

## SECTION C: WAVES, LIGHT AND SOUND

**Q6.** A wave has a speed of 400 m/s and a wavelength of 2 m.

(a) State the formula relating speed, frequency and wavelength. *(2 marks)*

(b) Calculate the frequency of the wave. *(3 marks)*

(c) State two characteristics of a wave. *(2 marks)*

(d) State one example of a wave. *(2 marks)*

---

**Q7.** An object is placed 40 cm in front of a convex lens of focal length 20 cm.

(a) State the lens formula. *(2 marks)*

(b) Calculate the image distance. *(4 marks)*

(c) State the nature of the image formed. *(2 marks)*

(d) State one use of a convex lens. *(2 marks)*

---

## SECTION D: ELECTRICITY AND MAGNETISM

**Q8.** A circuit has a 12 V battery and two resistors of 4 Ω and 6 Ω connected in parallel.

(a) Calculate the total resistance of the circuit. *(4 marks)*

(b) Calculate the total current drawn from the battery. *(3 marks)*

(c) Calculate the current through the 6 Ω resistor. *(3 marks)*

(d) State the unit of current. *(1 mark)*

---

**Q9.** A current-carrying conductor is placed in a magnetic field.

(a) State the force that acts on the conductor. *(2 marks)*

(b) State two factors that affect the magnitude of the force. *(4 marks)*

(c) State the rule used to determine the direction of the force. *(2 marks)*

(d) State one application of the motor effect. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Physics structured set 8',
    updated_at = NOW()
WHERE id = '857a1335-2136-ebce-29ce-77a4e27005b5';

COMMIT;
