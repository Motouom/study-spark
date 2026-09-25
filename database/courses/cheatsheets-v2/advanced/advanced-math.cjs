module.exports = [
  // ═══════════════════════════════════════════════════════════════════════════
  // PURE MATHEMATICS WITH MECHANICS — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Pure Mathematics with Mechanics",
    slug: "pure-math-mechanics",
    topic: "Algebra and functions",
    title: "Algebra & Functions Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Algebra is the backbone of the Pure Mathematics paper. Quadratics, inequalities, surds, indices and the modulus function appear every year, both directly and inside calculus and coordinate geometry questions. Fluency here unlocks the rest of the syllabus.

## Core concepts

### Quadratics
- Solve by factorising, completing the square, or the formula:
$$x = \\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}$$
- **Completing the square:** \\(x^2 + bx + c = (x + \\frac{b}{2})^2 - \\frac{b^2}{4} + c\\).
- **Discriminant** \\(b^2 - 4ac\\):
  - \\(> 0\\): two distinct real roots.
  - \\(= 0\\): one repeated root (a tangent).
  - \\(< 0\\): no real roots.
- The discriminant also tells you whether a line meets a curve (2 points), touches it (1 point), or misses it (0 points).

### Inequalities
- Solve like equations but **flip the sign when multiplying/dividing by a negative**.
- **Quadratic inequalities:** solve the equation, then sketch the parabola to read the region.
  - \\(x^2 - 5x + 6 < 0\\) → roots 2 and 3 → \\(2 < x < 3\\).
- **Modulus inequalities:** \\(|x| < a\\) means \\(-a < x < a\\); \\(|x| > a\\) means \\(x < -a\\) or \\(x > a\\).

### Surds
- \\(\\sqrt{ab} = \\sqrt{a}\\sqrt{b}\\), \\(\\sqrt{\\frac{a}{b}} = \\frac{\\sqrt{a}}{\\sqrt{b}}\\).
- **Rationalising:** multiply top and bottom by the conjugate.
$$\\frac{1}{\\sqrt{3} + 1} \\times \\frac{\\sqrt{3} - 1}{\\sqrt{3} - 1} = \\frac{\\sqrt{3} - 1}{2}$$

### Indices
- \\(a^m a^n = a^{m+n}\\), \\((a^m)^n = a^{mn}\\), \\(a^{-n} = \\frac{1}{a^n}\\), \\(a^{1/n} = \\sqrt[n]{a}\\).

### The modulus function
- \\(|x|\\) is the distance from 0 — always non-negative.
- \\(|x| = x\\) for \\(x \\ge 0\\), \\(|x| = -x\\) for \\(x < 0\\).
- To solve \\(|2x - 1| = 5\\): solve \\(2x - 1 = 5\\) AND \\(2x - 1 = -5\\) → \\(x = 3\\) or \\(x = -2\\).

### Functions
- **Domain:** the allowed inputs. **Range:** the possible outputs.
- **One-to-one:** each output has one input (needed for an inverse).
- **Composite functions:** \\(fg(x) = f(g(x))\\) — apply \\(g\\) first, then \\(f\\).
- **Inverse function:** \\(f^{-1}\\) undoes \\(f\\); the graphs are reflections in \\(y = x\\).

## Common mistakes & exam traps

- Forgetting to flip the inequality sign when dividing by a negative.
- Losing a root when solving \\(x^2 = 4\\) — the answer is \\(x = \\pm 2\\).
- Writing \\(\\sqrt{a + b} = \\sqrt{a} + \\sqrt{b}\\) — never true.
- Confusing the order in composite functions: \\(fg(x)\\) means \\(g\\) first.
- Forgetting that \\(|x| = a\\) has TWO solutions.

## Exam technique

1. Check the discriminant before attempting a quadratic — it tells you what to expect.
2. For inequalities, always sketch the graph to confirm the region.
3. State the domain and range when defining a function.
4. Verify inverse functions by checking \\(f(f^{-1}(x)) = x\\).

## Memory hooks

- **Discriminant:** "Positive two, zero one, negative none."
- **Modulus:** "Distance from zero — always positive."

## Quick practice

1. Solve \\(x^2 - 5x + 6 < 0\\). **[2 < x < 3]**
2. Rationalise \\(\\frac{1}{\\sqrt{3} + 1}\\). **[(√3 − 1)/2]**
3. Solve \\(|2x - 1| = 5\\). **[x = 3 or x = −2]**
4. If \\(f(x) = x^2\\) and \\(g(x) = x + 1\\), find \\(fg(2)\\). **[9]**`,
  },
  {
    subject: "Pure Mathematics with Mechanics",
    slug: "pure-math-mechanics",
    topic: "Coordinate geometry",
    title: "Coordinate Geometry Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Coordinate geometry links algebra to graphs. Straight lines, circles and their intersections are tested every year. The circle questions — finding centres, radii, tangents and intersections — are a reliable source of marks if you know the standard forms.

## Core concepts

### The straight line
- **Gradient:** \\(m = \\frac{y_2 - y_1}{x_2 - x_1}\\).
- **Equation forms:**
  - \\(y = mx + c\\)
  - \\(y - y_1 = m(x - x_1)\\)
  - \\(ax + by + c = 0\\)
- **Parallel:** equal gradients. **Perpendicular:** \\(m_1 m_2 = -1\\).
- **Midpoint:** \\(\\left(\\frac{x_1+x_2}{2}, \\frac{y_1+y_2}{2}\\right)\\).
- **Distance:** \\(\\sqrt{(x_2-x_1)^2 + (y_2-y_1)^2}\\).

### The circle
- Centre \\((a,b)\\), radius \\(r\\): \\((x-a)^2 + (y-b)^2 = r^2\\).
- General form: \\(x^2 + y^2 + 2gx + 2fy + c = 0\\).
  - Centre: \\((-g, -f)\\). Radius: \\(\\sqrt{g^2 + f^2 - c}\\).
- A tangent is **perpendicular to the radius** at the point of contact.

**Worked example:** tangent to \\(x^2 + y^2 = 25\\) at \\((3,4)\\).
Radius gradient \\(= \\frac{4}{3}\\), so tangent gradient \\(= -\\frac{3}{4}\\).
\\(y - 4 = -\\frac{3}{4}(x - 3)\\) → \\(3x + 4y = 25\\).

### Intersections
- **Line and circle:** substitute the line into the circle; the discriminant tells you 2, 1 (tangent) or 0 intersections.
- **Two circles:** subtract the equations to get the common chord (a straight line), then solve.

### The perpendicular bisector
- The locus of points equidistant from two points — used to find circle centres.

## Common mistakes & exam traps

- Using the radius gradient instead of the negative reciprocal for a tangent.
- Reading the centre from the general form with the wrong signs.
- Forgetting to complete the square to find the centre and radius.
- Confusing parallel (\\(m_1 = m_2\\)) with perpendicular (\\(m_1 m_2 = -1\\)).

## Exam technique

1. Sketch the situation before calculating.
2. For circles, complete the square if the equation is in general form.
3. For tangents, always find the radius gradient first, then flip and negate.
4. Check your answer by substituting the given point.

## Memory hooks

- **Perpendicular:** "Flip and negate."
- **Circle general form:** "Centre (−g, −f), radius √(g² + f² − c)."

## Quick practice

1. Find the centre and radius of \\(x^2 + y^2 - 6x + 4y - 12 = 0\\). **[Centre (3, −2), radius 5]**
2. Find the tangent to \\(x^2 + y^2 = 25\\) at (3, 4). **[3x + 4y = 25]**
3. Are \\(y = 2x + 1\\) and \\(y = -\\frac{1}{2}x + 3\\) parallel or perpendicular? **[Perpendicular]**
4. Find the distance between (1, 2) and (4, 6). **[5]**`,
  },
  {
    subject: "Pure Mathematics with Mechanics",
    slug: "pure-math-mechanics",
    topic: "Differentiation",
    title: "Differentiation Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Differentiation is the most heavily tested topic in Pure Mathematics. It appears as direct differentiation, tangents and normals, stationary points, and applied problems. Master the rules and the applications and you secure a large share of the paper.

## Core concepts

### Standard derivatives
| Function | Derivative |
|---|---|
| \\(x^n\\) | \\(nx^{n-1}\\) |
| \\(\\sin x\\) | \\(\\cos x\\) |
| \\(\\cos x\\) | \\(-\\sin x\\) |
| \\(\\tan x\\) | \\(\\sec^2 x\\) |
| \\(e^x\\) | \\(e^x\\) |
| \\(\\ln x\\) | \\(\\frac{1}{x}\\) |
| \\(\\sin(ax+b)\\) | \\(a\\cos(ax+b)\\) |

### The rules
- **Chain rule:** \\(\\frac{dy}{dx} = \\frac{dy}{du} \\cdot \\frac{du}{dx}\\).
- **Product rule:** \\((uv)' = u'v + uv'\\).
- **Quotient rule:** \\(\\left(\\frac{u}{v}\\right)' = \\frac{u'v - uv'}{v^2}\\).

### Tangents and normals
- Tangent gradient at \\(x = a\\): \\(f'(a)\\).
- Normal gradient: \\(-\\frac{1}{f'(a)}\\).

### Stationary points
- Solve \\(f'(x) = 0\\).
- Classify with \\(f''(x)\\):
  - \\(f'' > 0\\): minimum.
  - \\(f'' < 0\\): maximum.
  - \\(f'' = 0\\): point of inflection (check sign change of \\(f'\\)).

### Increasing and decreasing
- \\(f'(x) > 0\\): increasing. \\(f'(x) < 0\\): decreasing.

### Rates of change
- \\(\\frac{dy}{dt} = \\frac{dy}{dx} \\cdot \\frac{dx}{dt}\\).
- **Connected rates:** set up the chain, substitute known values.

## Common mistakes & exam traps

- Forgetting the chain rule on \\((2x+1)^5\\).
- Using the product rule when expanding first is simpler.
- Confusing maximum and minimum — always check \\(f''\\).
- For normals, forgetting the negative reciprocal.
- Dropping the \\(\\frac{du}{dx}\\) factor in the chain rule.

## Exam technique

1. Write \\(\\frac{dy}{dx} = ...\\) before differentiating — method marks.
2. For stationary points, find the y-coordinate too.
3. For optimisation problems: define the variable, form the expression, differentiate, set to zero, verify nature.
4. Check units in rates-of-change problems.

## Memory hooks

- **Power rule:** "Bring down, reduce by one."
- **Normal:** "Flip and negate."

## Quick practice

1. Differentiate \\(y = (3x + 1)^4\\). **[12(3x+1)³]**
2. Find the stationary points of \\(y = x^3 - 3x\\). **[Max at (−1, 2), min at (1, −2)]**
3. Differentiate \\(y = x^2 e^x\\). **[eˣ(x² + 2x)]**
4. Find the normal to \\(y = x^2\\) at \\(x = 1\\). **[Gradient −1/2]**`,
  },
  {
    subject: "Pure Mathematics with Mechanics",
    slug: "pure-math-mechanics",
    topic: "Integration",
    title: "Integration Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Integration is the inverse of differentiation and a guaranteed topic. Definite integrals, areas under curves, and volumes of revolution are the standard questions. The area question appears nearly every year.

## Core concepts

### Standard integrals
| Function | Integral |
|---|---|
| \\(x^n\\) | \\(\\frac{x^{n+1}}{n+1} + c\\), \\(n \\ne -1\\) |
| \\(\\frac{1}{x}\\) | \\(\\ln|x| + c\\) |
| \\(\\sin x\\) | \\(-\\cos x + c\\) |
| \\(\\cos x\\) | \\(\\sin x + c\\) |
| \\(e^x\\) | \\(e^x + c\\) |
| \\(\\sec^2 x\\) | \\(\\tan x + c\\) |

### Definite integrals
$$\\int_a^b f(x)\\,dx = [F(x)]_a^b = F(b) - F(a)$$

### Area under a curve
- Area between curve and x-axis: \\(\\int_a^b y\\,dx\\).
- **Check for sign changes** — split the interval where the curve crosses the axis, otherwise areas cancel.
- Area between two curves: \\(\\int (\\text{upper} - \\text{lower})\\,dx\\) over the intersection points.

### Integration by substitution
- Choose \\(u = g(x)\\), replace \\(dx\\), and change the limits.
**Example:** \\(\\int 2x(x^2 + 1)^3\\,dx\\). Let \\(u = x^2 + 1\\), \\(du = 2x\\,dx\\):
\\(\\int u^3\\,du = \\frac{u^4}{4} + c = \\frac{(x^2+1)^4}{4} + c\\).

### Integration by parts
$$\\int u\\,dv = uv - \\int v\\,du$$
Choose \\(u\\) as the function that simplifies when differentiated (often \\(x\\) or \\(\\ln x\\)).

### Volumes of revolution
- About the x-axis: \\(V = \\pi \\int_a^b y^2\\,dx\\).
- About the y-axis: \\(V = \\pi \\int_c^d x^2\\,dy\\).

## Common mistakes & exam traps

- Forgetting the \\(+c\\) on indefinite integrals.
- Not splitting the interval when the curve crosses the axis.
- Forgetting to change the limits in a substitution.
- Choosing the wrong \\(u\\) in integration by parts.
- Subtracting the wrong way round (upper minus lower).

## Exam technique

1. **Check by differentiating** your answer.
2. Sketch the curve for area problems.
3. For volumes, square the function before integrating.
4. Write limits clearly before evaluating.

## Memory hooks

- **Integration:** "Add one, divide by the new power."
- **Parts:** "u dv = uv minus v du."

## Quick practice

1. Evaluate \\(\\int_0^1 (x - x^2)\\,dx\\). **[1/6]**
2. Integrate \\(\\int 2x(x^2 + 1)^3\\,dx\\). **[(x²+1)⁴/4 + c]**
3. Find the volume of revolution of \\(y = x\\) from 0 to 2 about the x-axis. **[8π/3]**
4. Integrate \\(\\int x e^x\\,dx\\) by parts. **[eˣ(x − 1) + c]**`,
  },
  {
    subject: "Pure Mathematics with Mechanics",
    slug: "pure-math-mechanics",
    topic: "Kinematics",
    title: "Kinematics Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Kinematics is the mechanics half of the paper — motion without considering forces. The SUVAT equations and the calculus links between displacement, velocity and acceleration are tested every year. This is a high-scoring topic if you choose the right equation.

## Core concepts

### SUVAT equations (constant acceleration)
- \\(s\\) = displacement, \\(u\\) = initial velocity, \\(v\\) = final velocity, \\(a\\) = acceleration, \\(t\\) = time.
1. \\(v = u + at\\)
2. \\(s = \\frac{u+v}{2}t\\)
3. \\(s = ut + \\frac{1}{2}at^2\\)
4. \\(v^2 = u^2 + 2as\\)

Choose the equation that contains the three knowns and the unknown you need.

### Calculus links
- \\(v = \\frac{ds}{dt}\\), \\(a = \\frac{dv}{dt}\\).
- \\(s = \\int v\\,dt\\), \\(v = \\int a\\,dt\\).
- A body is **at rest** when \\(v = 0\\).
- **Maximum displacement** occurs when \\(v = 0\\) (and \\(a < 0\\)).

### Motion graphs
- **Displacement-time:** gradient = velocity.
- **Velocity-time:** gradient = acceleration; area under the graph = displacement.
- **Acceleration-time:** area = change in velocity.

### Vertical motion under gravity
- \\(a = g \\approx 9.8\\,m/s^2\\) downward.
- For a projectile thrown up: \\(v = 0\\) at the highest point.
- Total time up = total time down (symmetry).

## Common mistakes & exam traps

- Using a SUVAT equation when acceleration is NOT constant.
- Mixing up \\(u\\) and \\(v\\).
- Forgetting the sign of \\(g\\) (downward is negative if up is positive).
- Confusing distance (scalar) with displacement (vector).
- Forgetting to integrate with initial conditions to find the constant.

## Exam technique

1. List what you know: \\(s, u, v, a, t\\) — write the values and the unknown.
2. Pick the equation with exactly those quantities.
3. For calculus questions, integrate/differentiate and use initial conditions.
4. Check the direction signs.

## Memory hooks

- **SUVAT:** "v = u + at, s = (u+v)t/2, s = ut + ½at², v² = u² + 2as."
- **At rest:** "v = 0."

## Quick practice

1. A car accelerates from rest at 2 m/s² for 5 s. Find its final velocity. **[10 m/s]**
2. A ball is thrown up at 20 m/s. How high does it rise? **[≈20.4 m]**
3. If \\(s = t^3 - 6t^2\\), when is the body at rest? **[t = 0 and t = 4]**
4. What does the area under a velocity-time graph give? **[Displacement]**`,
  },
  {
    subject: "Pure Mathematics with Mechanics",
    slug: "pure-math-mechanics",
    topic: "Forces and Newton's laws",
    title: "Forces & Newton's Laws Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Newton's laws connect forces to motion — the heart of mechanics. You must be able to draw force diagrams, resolve forces, and apply \\(F = ma\\) to particles, connected bodies and inclined planes. This is a guaranteed topic.

## Core concepts

### Newton's three laws
1. **First law:** a body stays at rest or moves uniformly unless acted on by a resultant force.
2. **Second law:** \\(F = ma\\) — resultant force = mass × acceleration.
3. **Third law:** every action has an equal and opposite reaction.

### Types of force
- **Weight:** \\(W = mg\\) (always downward).
- **Normal reaction:** \\(R\\) or \\(N\\) — perpendicular to the surface.
- **Tension:** \\(T\\) — along a string/rope, pulling.
- **Friction:** \\(F_r\\) — opposes motion, parallel to the surface.
- **Thrust/push:** along a rod, pushing.

### Resolving forces
- A force \\(P\\) at angle \\(\\theta\\) to the horizontal:
  - Horizontal component: \\(P\\cos\\theta\\).
  - Vertical component: \\(P\\sin\\theta\\).
- On an inclined plane at angle \\(\\alpha\\):
  - Weight component down the plane: \\(mg\\sin\\alpha\\).
  - Weight component perpendicular: \\(mg\\cos\\alpha\\).

### Friction
- **Limiting friction:** \\(F_{max} = \\mu R\\) where \\(\\mu\\) is the coefficient of friction.
- Friction acts to oppose motion.
- If \\(\\mu R\\) is not reached, friction balances the applied force.

### Connected particles
- Two particles joined by a string over a pulley.
- The tension is the same throughout a light string.
- Apply \\(F = ma\\) to each particle, then solve the simultaneous equations.

### Equilibrium
- A body is in equilibrium when the resultant force is zero.
- Resolve in two perpendicular directions and set each sum to zero.

## Common mistakes & exam traps

- Forgetting the weight \\(mg\\) in force diagrams.
- Resolving the wrong component on an inclined plane.
- Using \\(F = ma\\) with the wrong mass for connected bodies.
- Forgetting that friction opposes motion.
- Not drawing a clear force diagram.

## Exam technique

1. **Always draw a force diagram** — it earns method marks.
2. Resolve perpendicular to the plane to find \\(R\\), then parallel to the plane for \\(F = ma\\).
3. For connected bodies, write one equation per body and solve together.
4. Check the direction of friction.

## Memory hooks

- **F = ma:** "Resultant force equals mass times acceleration."
- **Inclined plane:** "mg sin down the slope, mg cos into the slope."

## Quick practice

1. State Newton's second law. **[F = ma]**
2. A 5 kg mass has weight... **[49 N]**
3. On a plane at 30°, what is the weight component down the plane? **[mg sin 30° = 24.5 N]**
4. If \\(\\mu = 0.4\\) and \\(R = 50\\) N, what is the limiting friction? **[20 N]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // PURE MATHEMATICS WITH STATISTICS — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Pure Mathematics with Statistics",
    slug: "pure-math-stats",
    topic: "Statistical measures",
    title: "Statistical Measures Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Statistical measures summarise data. Mean, median, mode, variance and standard deviation are tested every year, usually from a frequency table. The calculations are mechanical — the marks go to those who set up the table correctly.

## Core concepts

### Measures of central tendency
- **Mean:** \\(\\bar{x} = \\frac{\\Sigma fx}{\\Sigma f}\\) for grouped data.
- **Median:** the middle value. For grouped data, use interpolation.
- **Mode:** the most frequent value. For grouped data, the modal class.

### Measures of spread
- **Range:** max − min.
- **Interquartile range (IQR):** \\(Q_3 - Q_1\\) — the middle 50% of data.
- **Variance:** \\(\\sigma^2 = \\frac{\\Sigma fx^2}{\\Sigma f} - \\bar{x}^2\\).
- **Standard deviation:** \\(\\sigma = \\sqrt{\\text{variance}}\\).

### Worked example (frequency table)
| x | f | fx | fx² |
|---|---|---|---|
| 2 | 3 | 6 | 12 |
| 4 | 5 | 20 | 80 |
| 6 | 2 | 12 | 72 |
| Total | 10 | 38 | 164 |

Mean \\(= 38/10 = 3.8\\).
Variance \\(= 164/10 - 3.8^2 = 16.4 - 14.44 = 1.96\\).
Standard deviation \\(= \\sqrt{1.96} = 1.4\\).

### Choosing the right measure
- **Mean:** uses all data — but affected by outliers.
- **Median:** not affected by outliers — good for skewed data.
- **Mode:** useful for categorical data.

### Percentiles and quartiles
- \\(Q_1\\): 25th percentile. \\(Q_2\\): median. \\(Q_3\\): 75th percentile.
- For grouped data, use interpolation within the class interval.

## Common mistakes & exam traps

- Forgetting the \\(fx\\) and \\(fx^2\\) columns.
- Using \\(\\Sigma f\\) as the denominator incorrectly.
- Forgetting to subtract \\(\\bar{x}^2\\) in the variance formula.
- Confusing variance and standard deviation.
- Using the wrong class boundaries for interpolation.

## Exam technique

1. Always draw the table with \\(f\\), \\(fx\\), \\(fx^2\\) columns and totals.
2. Show the formula before substituting.
3. Give standard deviation to a sensible accuracy (2–3 s.f.).
4. For interpolation, write the formula: \\(Q = L + \\frac{n/4 - CF}{f} \\times w\\).

## Memory hooks

- **Variance:** "Mean of squares minus square of mean."
- **SD:** "Square root of the variance."

## Quick practice

1. Find the mean of the table above. **[3.8]**
2. What is the standard deviation? **[1.4]**
3. Which measure is not affected by outliers? **[Median]**
4. What is the IQR? **[Q3 − Q1]**`,
  },
  {
    subject: "Pure Mathematics with Statistics",
    slug: "pure-math-stats",
    topic: "Probability",
    title: "Probability Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Probability is a core topic in the Statistics paper. You must handle sample spaces, the addition and multiplication rules, conditional probability, and tree diagrams. Questions use everyday situations — dice, cards, students — so the setup matters as much as the arithmetic.

## Core concepts

### The basics
- \\(P(A) = \\frac{\\text{favourable outcomes}}{\\text{total outcomes}}\\).
- \\(0 \\le P(A) \\le 1\\).
- \\(P(A') = 1 - P(A)\\).

### Addition rule
- **Mutually exclusive:** \\(P(A \\cup B) = P(A) + P(B)\\).
- **General:** \\(P(A \\cup B) = P(A) + P(B) - P(A \\cap B)\\).

### Multiplication rule
- **Independent events:** \\(P(A \\cap B) = P(A) \\times P(B)\\).
- **General (conditional):** \\(P(A \\cap B) = P(A) \\times P(B|A)\\).

### Conditional probability
$$P(B|A) = \\frac{P(A \\cap B)}{P(A)}$$
"Probability of B given A" — the sample space is reduced to A.

### Tree diagrams
- Each branch shows a probability; multiply along branches, add across outcomes.
- **Without replacement:** the denominator decreases after each draw.

### Worked example
A bag has 4 red and 6 blue marbles. Two drawn without replacement.
\\(P(\\text{both red}) = \\frac{4}{10} \\times \\frac{3}{9} = \\frac{12}{90} = \\frac{2}{15}\\).

### "At least one"
- \\(P(\\text{at least one}) = 1 - P(\\text{none})\\).

## Common mistakes & exam traps

- Adding probabilities of events that are NOT mutually exclusive.
- Multiplying when events are not independent.
- Forgetting to reduce the denominator "without replacement".
- Confusing \\(P(A|B)\\) with \\(P(B|A)\\).
- Forgetting the subtraction in the general addition rule.

## Exam technique

1. Write the probability as a fraction before simplifying.
2. For "at least one", use \\(1 - P(\\text{none})\\).
3. Draw the tree diagram even if not asked.
4. Check that all branch probabilities from a point sum to 1.

## Memory hooks

- **Or = add, And = multiply** (for the right cases).
- **At least one:** "One minus none."

## Quick practice

1. Two dice are rolled. Find \\(P(\\text{sum} = 7)\\). **[6/36 = 1/6]**
2. \\(P(A) = 0.4\\), \\(P(B) = 0.5\\), independent. Find \\(P(A \\cap B)\\). **[0.2]**
3. From the marble bag, find \\(P(\\text{both red})\\) without replacement. **[2/15]**
4. \\(P(A) = 0.3\\). Find \\(P(\\text{at least one})\\) in two trials. **[1 − 0.7² = 0.51]**`,
  },
  {
    subject: "Pure Mathematics with Statistics",
    slug: "pure-math-stats",
    topic: "The binomial distribution",
    title: "The Binomial Distribution Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

The binomial distribution models the number of successes in a fixed number of independent trials. It is a guaranteed topic in the Statistics paper. You must know when to use it, how to apply the formula, and how to use the binomial tables.

## Core concepts

### When to use the binomial
A situation is binomial if:
1. A fixed number of trials \\(n\\).
2. Each trial has two outcomes (success/failure).
3. The probability of success \\(p\\) is constant.
4. The trials are independent.

### The formula
$$P(X = r) = \\binom{n}{r} p^r (1-p)^{n-r}$$
where \\(\\binom{n}{r} = \\frac{n!}{r!(n-r)!}\\).

### Mean and variance
- **Mean:** \\(E(X) = np\\).
- **Variance:** \\(\\text{Var}(X) = np(1-p)\\).
- **Standard deviation:** \\(\\sqrt{np(1-p)}\\).

### Worked example
A coin is tossed 5 times. Find \\(P(\\text{exactly 3 heads})\\).
\\(n = 5\\), \\(p = 0.5\\), \\(r = 3\\):
$$P(X = 3) = \\binom{5}{3}(0.5)^3(0.5)^2 = 10 \\times 0.125 \\times 0.25 = 0.3125$$

### Cumulative probabilities
- \\(P(X \\le r)\\): read directly from binomial tables.
- \\(P(X \\ge r) = 1 - P(X \\le r-1)\\).
- \\(P(a \\le X \\le b) = P(X \\le b) - P(X \\le a-1)\\).

## Common mistakes & exam traps

- Using the binomial when trials are NOT independent or \\(p\\) changes.
- Forgetting the \\(\\binom{n}{r}\\) coefficient.
- Confusing \\(p\\) and \\((1-p)\\).
- Reading \\(P(X \\ge r)\\) directly from tables (tables give \\(\\le\\)).
- Using \\(np\\) for the variance (forgetting the \\((1-p)\\)).

## Exam technique

1. Check the four conditions before using the binomial.
2. Write \\(X \\sim B(n, p)\\) — it communicates your setup.
3. For \\(\\ge\\), use \\(1 - P(X \\le r-1)\\).
4. State the mean and variance when asked.

## Memory hooks

- **Binomial:** "Fixed n, two outcomes, constant p, independent."
- **Mean/variance:** "np and np(1−p)."

## Quick practice

1. A coin is tossed 5 times. Find \\(P(\\text{exactly 3 heads})\\). **[0.3125]**
2. For \\(X \\sim B(10, 0.2)\\), find the mean. **[2]**
3. Find the variance for \\(X \\sim B(10, 0.2)\\). **[1.6]**
4. How do you find \\(P(X \\ge 3)\\) from tables? **[1 − P(X ≤ 2)]**`,
  },
  {
    subject: "Pure Mathematics with Statistics",
    slug: "pure-math-stats",
    topic: "Correlation and regression",
    title: "Correlation & Regression Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Correlation and regression measure the relationship between two variables. You must be able to calculate the product-moment correlation coefficient, interpret scatter diagrams, and use the least-squares regression line to make predictions.

## Core concepts

### Scatter diagrams
- **Positive correlation:** as x rises, y rises.
- **Negative correlation:** as x rises, y falls.
- **No correlation:** no pattern.
- The stronger the clustering around a line, the stronger the correlation.

### The product-moment correlation coefficient \\(r\\)
$$r = \\frac{\\Sigma(x - \\bar{x})(y - \\bar{y})}{\\sqrt{\\Sigma(x - \\bar{x})^2 \\Sigma(y - \\bar{y})^2}}$$
- \\(r\\) lies between −1 and +1.
- \\(r = 1\\): perfect positive. \\(r = -1\\): perfect negative. \\(r = 0\\): no linear correlation.
- \\(r\\) measures **linear** correlation only.

### The regression line
- The line of best fit: \\(y = a + bx\\).
- **Gradient:** \\(b = \\frac{\\Sigma(x - \\bar{x})(y - \\bar{y})}{\\Sigma(x - \\bar{x})^2}\\).
- **Intercept:** \\(a = \\bar{y} - b\\bar{x}\\).
- The line always passes through \\((\\bar{x}, \\bar{y})\\).

### Using the regression line
- Substitute an x value to **predict** y.
- Only predict within the range of the data (interpolation); extrapolation is unreliable.

## Common mistakes & exam traps

- Thinking correlation implies causation.
- Using \\(r\\) for non-linear relationships.
- Forgetting that the regression line passes through the mean point.
- Predicting far outside the data range.
- Mixing up which variable is x (the predictor) and which is y.

## Exam technique

1. Draw the scatter diagram first — it guides your answer.
2. Show the formula and the working for \\(r\\).
3. Interpret \\(r\\) in words (strength and direction).
4. For predictions, state that you are interpolating or extrapolating.

## Memory hooks

- **r:** "Between −1 and 1; near 1 strong, near 0 weak."
- **Regression:** "Always through the mean point."

## Quick practice

1. What does \\(r = -0.9\\) mean? **[Strong negative linear correlation]**
2. Does correlation imply causation? **[No]**
3. What point does the regression line always pass through? **[(x̄, ȳ)]**
4. Why is extrapolation unreliable? **[The relationship may change outside the data range]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // FURTHER MATHEMATICS — Advanced Level
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Further Mathematics",
    slug: "further-math",
    topic: "Complex numbers",
    title: "Complex Numbers Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Complex numbers extend the number system to include \\(i = \\sqrt{-1}\\). They are a core topic in Further Mathematics — tested as arithmetic, the Argand diagram, modulus-argument form, and De Moivre's theorem. They also connect to roots of equations and trigonometry.

## Core concepts

### The imaginary unit
- \\(i^2 = -1\\), so \\(\\sqrt{-1} = i\\).
- \\(i^3 = -i\\), \\(i^4 = 1\\) — the powers cycle with period 4.

### Standard form
- \\(z = a + bi\\) where \\(a\\) is the real part and \\(b\\) the imaginary part.
- **Addition/subtraction:** combine real and imaginary parts.
- **Multiplication:** expand like binomials, using \\(i^2 = -1\\).
  \\((2 + 3i)(1 - i) = 2 - 2i + 3i - 3i^2 = 5 + i\\).
- **Division:** multiply top and bottom by the **conjugate** \\(a - bi\\).

### The conjugate
- \\(\\bar{z} = a - bi\\).
- \\(z\\bar{z} = a^2 + b^2\\) (a real number).
- \\(\\overline{z_1 + z_2} = \\bar{z_1} + \\bar{z_2}\\).

### The Argand diagram
- Plot \\(a + bi\\) as the point \\((a, b)\\).
- **Modulus:** \\(|z| = \\sqrt{a^2 + b^2}\\) — distance from the origin.
- **Argument:** \\(\\arg z = \\tan^{-1}(\\frac{b}{a})\\) — the angle from the positive real axis.

### Modulus-argument form
$$z = r(\\cos\\theta + i\\sin\\theta)$$
where \\(r = |z|\\) and \\(\\theta = \\arg z\\).

### De Moivre's theorem
$$(\\cos\\theta + i\\sin\\theta)^n = \\cos(n\\theta) + i\\sin(n\\theta)$$
Used to find powers and roots of complex numbers.

### Roots of equations
- A polynomial of degree \\(n\\) has \\(n\\) roots (some complex).
- Complex roots come in **conjugate pairs**.

## Common mistakes & exam traps

- Forgetting that \\(i^2 = -1\\) when multiplying.
- Dividing without multiplying by the conjugate.
- Forgetting the conjugate pair rule for real polynomials.
- Using degrees instead of radians in the argument.
- Confusing the real and imaginary parts.

## Exam technique

1. Write complex numbers in standard form \\(a + bi\\).
2. For division, always multiply by the conjugate.
3. Draw the Argand diagram to check your modulus and argument.
4. Use De Moivre's theorem for powers and roots.

## Memory hooks

- **i powers:** "i, −1, −i, 1 — cycle of four."
- **Division:** "Multiply by the conjugate."

## Quick practice

1. Simplify \\((2 + 3i)(1 - i)\\). **[5 + i]**
2. Find \\(|3 + 4i|\\). **[5]**
3. Find the conjugate of \\(2 - 5i\\). **[2 + 5i]**
4. Simplify \\(i^{27}\\). **[−i]**`,
  },
  {
    subject: "Further Mathematics",
    slug: "further-math",
    topic: "Matrices and transformations",
    title: "Matrices & Transformations Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Matrices are a major topic in Further Mathematics — arithmetic, determinants, inverses, solving simultaneous equations, and representing transformations. The link between matrices and geometry is a favourite exam question.

## Core concepts

### Matrix arithmetic
- **Addition/subtraction:** same order only, element by element.
- **Scalar multiplication:** multiply every element.
- **Multiplication:** rows of first × columns of second. \\(AB \\ne BA\\) in general.

### Determinant of a 2×2
For \\(A = \\begin{pmatrix}a & b\\\\c & d\\end{pmatrix}\\), \\(\\det(A) = ad - bc\\).
- \\(\\det = 0\\): **singular** — no inverse.

### Inverse of a 2×2
$$A^{-1} = \\frac{1}{ad-bc}\\begin{pmatrix}d & -b\\\\-c & a\\end{pmatrix}$$

### Determinant of a 3×3
Expand along a row or column using minors and cofactors, alternating signs:
$$\\det = a(ei - fh) - b(di - fg) + c(dh - eg)$$

### Solving simultaneous equations
- Write as \\(A\\mathbf{x} = \\mathbf{b}\\).
- \\(\\mathbf{x} = A^{-1}\\mathbf{b}\\).
- If \\(\\det A = 0\\): no unique solution (inconsistent or infinite solutions).

### Transformations
| Transformation | Matrix |
|---|---|
| Reflection in x-axis | \\(\\begin{pmatrix}1&0\\\\0&-1\\end{pmatrix}\\) |
| Reflection in y-axis | \\(\\begin{pmatrix}-1&0\\\\0&1\\end{pmatrix}\\) |
| Rotation 90° anticlockwise | \\(\\begin{pmatrix}0&-1\\\\1&0\\end{pmatrix}\\) |
| Rotation 180° | \\(\\begin{pmatrix}-1&0\\\\0&-1\\end{pmatrix}\\) |
| Enlargement scale k | \\(\\begin{pmatrix}k&0\\\\0&k\\end{pmatrix}\\) |
| Shear | \\(\\begin{pmatrix}1&k\\\\0&1\\end{pmatrix}\\) |

- A transformation matrix \\(M\\) maps \\((x, y)\\) to \\(M\\binom{x}{y}\\).
- **Combined transformations:** apply in order — the first transformation is on the right.

### Invariant points and lines
- Points where \\(M\\mathbf{x} = \\mathbf{x}\\).
- Solve \\((M - I)\\mathbf{x} = \\mathbf{0}\\).

## Common mistakes & exam traps

- Multiplying matrices in the wrong order.
- Forgetting the sign pattern in the inverse.
- Confusing the order of combined transformations.
- Dividing by a zero determinant.
- Forgetting that \\(AB \\ne BA\\).

## Exam technique

1. Check the orders before multiplying.
2. For inverses, check \\(AA^{-1} = I\\).
3. For transformations, apply the matrix to a test point.
4. For combined transformations, remember: rightmost acts first.

## Memory hooks

- **Inverse:** "Swap diagonal, negate other, divide by determinant."
- **Combined:** "Rightmost first."

## Quick practice

1. Find the inverse of \\(\\begin{pmatrix}2&3\\\\1&4\\end{pmatrix}\\). **[1/5 \\begin{pmatrix}4&−3\\\\−1&2\\end{pmatrix}]**
2. Which matrix reflects in the y-axis? **[\\begin{pmatrix}−1&0\\\\0&1\\end{pmatrix}]**
3. Solve \\(2x + 3y = 7\\), \\(x + 4y = 6\\) using matrices. **[x = 2, y = 1]**
4. Is \\(\\begin{pmatrix}2&4\\\\1&2\\end{pmatrix}\\) singular? **[Yes]**`,
  },
  {
    subject: "Further Mathematics",
    slug: "further-math",
    topic: "Polar coordinates",
    title: "Polar Coordinates Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Polar coordinates describe points by distance from the origin and angle from the positive x-axis. They are a distinctive Further Mathematics topic, tested through conversion, sketching curves, and finding areas.

## Core concepts

### The polar system
- A point is \\((r, \\theta)\\): \\(r\\) = distance from the pole (origin), \\(\\theta\\) = angle from the initial line (positive x-axis).
- \\(\\theta\\) is usually measured in **radians**.

### Converting between polar and Cartesian
- \\(x = r\\cos\\theta\\), \\(y = r\\sin\\theta\\).
- \\(r^2 = x^2 + y^2\\), \\(\\tan\\theta = \\frac{y}{x}\\).

**Example:** convert \\((2, \\frac{\\pi}{3})\\) to Cartesian:
\\(x = 2\\cos\\frac{\\pi}{3} = 1\\), \\(y = 2\\sin\\frac{\\pi}{3} = \\sqrt{3}\\) → \\((1, \\sqrt{3})\\).

### Standard polar curves
- \\(r = a\\): a circle, centre origin, radius \\(a\\).
- \\(\\theta = \\alpha\\): a half-line from the origin at angle \\(\\alpha\\).
- \\(r = a\\cos\\theta\\): a circle through the origin, centre \\((a/2, 0)\\).
- \\(r = a(1 + \\cos\\theta)\\): a cardioid.
- \\(r = a\\cos(n\\theta)\\): a rose curve with \\(n\\) petals (or \\(2n\\) if \\(n\\) even).

### Area in polar coordinates
$$A = \\frac{1}{2}\\int_{\\alpha}^{\\beta} r^2\\,d\\theta$$
- Find the limits by solving where the curve meets the pole (\\(r = 0\\)) or the required rays.

### Symmetry
- \\(r(\\theta) = r(-\\theta)\\): symmetric about the initial line.
- \\(r(\\theta) = r(\\pi - \\theta)\\): symmetric about the y-axis.

## Common mistakes & exam traps

- Using degrees when the formula needs radians.
- Forgetting to square \\(r\\) in the area formula.
- Getting the limits wrong — solve \\(r = 0\\) carefully.
- Confusing the conversion formulas.
- Forgetting the \\(\\frac{1}{2}\\) in the area formula.

## Exam technique

1. Sketch the curve before finding areas.
2. Convert a few key points to check your sketch.
3. For areas, find the limits by setting \\(r = 0\\).
4. Use symmetry to halve the work.

## Memory hooks

- **Conversion:** "x = r cos, y = r sin, r² = x² + y²."
- **Area:** "Half the integral of r² dθ."

## Quick practice

1. Convert \\((2, \\frac{\\pi}{3})\\) to Cartesian. **[(1, √3)]**
2. What is the curve \\(r = 3\\)? **[A circle, radius 3]**
3. Find the area enclosed by \\(r = a\\) from 0 to \\(2\\pi\\). **[πa²]**
4. What is a cardioid? **[r = a(1 + cos θ)]**`,
  },
  {
    subject: "Further Mathematics",
    slug: "further-math",
    topic: "Differential equations",
    title: "Differential Equations Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Differential equations model change — populations, cooling, motion, growth. They are a core Further Mathematics topic. You must solve first-order equations by separation of variables and integrating factors, and second-order linear equations with constant coefficients.

## Core concepts

### Separation of variables
For \\(\\frac{dy}{dx} = f(x)g(y)\\):
1. Rearrange: \\(\\frac{1}{g(y)}\\,dy = f(x)\\,dx\\).
2. Integrate both sides.
3. Use the initial condition to find the constant.

**Example:** \\(\\frac{dy}{dx} = xy\\), \\(y(0) = 1\\).
\\(\\int \\frac{1}{y}\\,dy = \\int x\\,dx\\) → \\(\\ln y = \\frac{x^2}{2} + c\\).
\\(y = Ae^{x^2/2}\\), and \\(y(0) = 1\\) gives \\(A = 1\\), so \\(y = e^{x^2/2}\\).

### First-order linear: integrating factor
For \\(\\frac{dy}{dx} + P(x)y = Q(x)\\):
- Integrating factor: \\(I = e^{\\int P\\,dx}\\).
- Multiply through, then \\(\\frac{d}{dx}(Iy) = IQ\\).
- Integrate both sides.

### Second-order linear with constant coefficients
\\(a\\frac{d^2y}{dx^2} + b\\frac{dy}{dx} + cy = 0\\):
- Auxiliary equation: \\(am^2 + bm + c = 0\\).
- **Distinct real roots** \\(m_1, m_2\\): \\(y = Ae^{m_1x} + Be^{m_2x}\\).
- **Repeated root** \\(m\\): \\(y = (A + Bx)e^{mx}\\).
- **Complex roots** \\(\\alpha \\pm \\beta i\\): \\(y = e^{\\alpha x}(A\\cos\\beta x + B\\sin\\beta x)\\).

### Particular integral (for non-zero RHS)
- Try a form matching the RHS: constant, polynomial, exponential, or \\(A\\cos x + B\\sin x\\).
- Substitute into the equation to find the coefficients.

### Applications
- **Newton's law of cooling:** \\(\\frac{dT}{dt} = -k(T - T_s)\\).
- **Population growth:** \\(\\frac{dP}{dt} = kP\\).
- **Simple harmonic motion:** \\(\\frac{d^2x}{dt^2} = -\\omega^2 x\\).

## Common mistakes & exam traps

- Forgetting the constant of integration.
- Not using the initial condition.
- Getting the auxiliary equation wrong.
- Forgetting the \\(x\\) factor for a repeated root.
- Choosing the wrong form for the particular integral.

## Exam technique

1. Identify the type of equation first.
2. Show the separation or the integrating factor explicitly.
3. For second-order, write the auxiliary equation and its roots.
4. Always apply the initial/boundary conditions at the end.

## Memory hooks

- **Separable:** "Get y's with dy, x's with dx, integrate."
- **Auxiliary:** "Distinct real, repeated, complex — three cases."

## Quick practice

1. Solve \\(\\frac{dy}{dx} = xy\\) with \\(y(0) = 1\\). **[y = e^{x²/2}]**
2. Solve \\(y'' - 3y' + 2y = 0\\). **[y = Aeˣ + Be²ˣ]**
3. What is the integrating factor for \\(y' + 2y = 1\\)? **[e^{2x}]**
4. Write the general solution for roots \\(m = 2, 2\\). **[y = (A + Bx)e^{2x}]**`,
  },
];
