module.exports = [
  // ═══════════════════════════════════════════════════════════════════════════
  // MATHEMATICS — Form 5 (Ordinary Level)
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Mathematics",
    slug: "math",
    topic: "Number and operations",
    title: "Number & Operations Cheatsheet",
    estimatedMinutes: 25,
    body: `## Why this topic matters

Number work is the foundation of the whole GCE Mathematics paper. Almost every question — algebra, mensuration, statistics — quietly depends on you being able to compute accurately. A single arithmetic slip can cost you the marks even when your method is perfect, so examiners deliberately plant arithmetic traps.

## Core concepts

### BODMAS — the order of operations
Brackets → Orders (powers/roots) → Division and Multiplication (left to right) → Addition and Subtraction (left to right).

**Worked example:** \\(-8 + 12 \\div (-4) \\times (-3)\\)
1. Division first: \\(12 \\div (-4) = -3\\)
2. Multiplication: \\(-3 \\times (-3) = 9\\)
3. Addition: \\(-8 + 9 = 1\\)

### Directed numbers
- Same signs multiply/divide to a **positive**: \\((-3) \\times (-4) = 12\\)
- Different signs multiply/divide to a **negative**: \\((-3) \\times 4 = -12\\)
- When subtracting, add the opposite: \\(5 - (-3) = 5 + 3 = 8\\)

### Fractions
- **Add/subtract:** use a common denominator. \\(\\frac{1}{3} + \\frac{1}{4} = \\frac{4+3}{12} = \\frac{7}{12}\\)
- **Multiply:** cancel first, then multiply tops and bottoms.
- **Divide:** flip the second fraction and multiply. \\(\\frac{2}{3} \\div \\frac{4}{5} = \\frac{2}{3} \\times \\frac{5}{4} = \\frac{10}{12} = \\frac{5}{6}\\)

### Percentages
- Percentage change \\(= \\frac{\\text{change}}{\\text{original}} \\times 100\\)
- **Profit:** a trader buys a bag of rice at 25,000 FCFA and sells at 30,000 FCFA. Change = 5,000. \\(\\frac{5000}{25000} \\times 100 = 20\\%\\)
- **Reverse percentage:** after a 10% discount the price is 18,000 FCFA. Original \\(= \\frac{18000}{0.9} = 20,000\\) FCFA. (Divide by 0.9, NOT multiply by 1.1!)

### Ratio
Total ÷ total parts = value of one part.
**Example:** share 40,000 FCFA in the ratio 3 : 5. Total parts = 8. One part = 5,000. Shares = 15,000 and 25,000.

### Standard form
\\(A \\times 10^n\\) where \\(1 \\le A < 10\\).
- \\(45,600 = 4.56 \\times 10^4\\)
- \\(0.0000439 = 4.39 \\times 10^{-5}\\)

### Indices
| Rule | Example |
|---|---|
| \\(a^m \\times a^n = a^{m+n}\\) | \\(2^3 \\times 2^4 = 2^7\\) |
| \\(a^m \\div a^n = a^{m-n}\\) | \\(2^7 \\div 2^3 = 2^4\\) |
| \\((a^m)^n = a^{mn}\\) | \\((2^3)^2 = 2^6\\) |
| \\(a^0 = 1\\) | \\(7^0 = 1\\) |
| \\(a^{-n} = \\frac{1}{a^n}\\) | \\(2^{-3} = \\frac{1}{8}\\) |
| \\(a^{1/n} = \\sqrt[n]{a}\\) | \\(16^{1/4} = 2\\) |

### Rounding
- **Decimal places (d.p.):** count digits after the point.
- **Significant figures (s.f.):** count digits from the first non-zero digit. \\(0.00456\\) to 2 s.f. = \\(0.0046\\).

## Common mistakes & exam traps

- \\((-2)^2 = 4\\) but \\(-2^2 = -4\\). The brackets change everything.
- \\((x+4)^2 \\ne x^2 + 16\\). It is \\(x^2 + 8x + 16\\).
- \\(0.5^{-1} = 2\\) — a negative index flips the fraction.
- **Estimate first:** \\(0.048 \\times 391 \\approx 0.05 \\times 400 = 20\\). If your exact answer is far from the estimate, you slipped.
- When a question says "give your answer correct to 3 significant figures", the marks include the rounding — write the rounded value, not the raw one.

## Exam technique

1. Write every step. Method marks are awarded even if the final answer is wrong.
2. For word problems, first identify what is being asked (find, share, compare, convert).
3. Check units — FCFA, kg, m, hours. Convert before calculating.
4. Always sanity-check: is the answer sensible? A person cannot weigh 5,000 kg.

## Memory hooks

- **BODMAS:** "Big Old Dogs Make Awkward Sounds" — or make your own.
- **Negative × negative:** "Two wrongs make a right."
- **Standard form:** the power tells you how many places the decimal point moved.

## Quick practice

1. Evaluate \\(-8 + 12 \\div (-4) \\times (-3)\\). **[1]**
2. Write \\(0.0000439\\) in standard form. **[4.39 × 10⁻⁵]**
3. Share 40,000 FCFA in the ratio 3 : 5. **[15,000 : 25,000]**
4. A radio costs 12,000 FCFA after a 20% discount. What was the original price? **[15,000 FCFA]**`,
  },
  {
    subject: "Mathematics",
    slug: "math",
    topic: "Algebra and equations",
    title: "Algebra & Equations Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Algebra is the single most heavily tested area of GCE Ordinary Level Mathematics. It appears in Paper 1 (multiple choice) and Paper 2 (structured) every year, and it is the gateway to graphs, mensuration and statistics. Master the manipulation below and you unlock most of the paper.

## Core concepts

### Expansion
- \\((a+b)^2 = a^2 + 2ab + b^2\\)
- \\((a-b)^2 = a^2 - 2ab + b^2\\)
- \\((a+b)(a-b) = a^2 - b^2\\) (difference of two squares)

### Factorisation
1. Take out the **common factor** first: \\(2x^2 - 8x = 2x(x-4)\\).
2. For quadratics \\(x^2 + bx + c\\): find two numbers that **multiply to c** and **add to b**.
   - \\(x^2 - 5x + 6\\): numbers −2 and −3 → \\((x-2)(x-3)\\).
3. For \\(ax^2 + bx + c\\) where \\(a \\ne 1\\): use the product-sum method or the quadratic formula.

### Solving linear equations
Collect \\(x\\) terms on one side, numbers on the other, then divide.
\\(3x + 5 = 20 \\rightarrow 3x = 15 \\rightarrow x = 5\\).

### Inequalities
Solve like equations, but **flip the sign when multiplying or dividing by a negative**.
\\(-2x > 6 \\rightarrow x < -3\\).

### Simultaneous equations
- **Elimination:** make the coefficients of one variable equal, then add or subtract.
- **Substitution:** rearrange one equation and substitute into the other.
- Always check your answer in **both** original equations.

**Worked example:** \\(3x + 2y = 21\\) and \\(x - y = 1\\).
1. From the second: \\(x = y + 1\\).
2. Substitute: \\(3(y+1) + 2y = 21 \\rightarrow 5y + 3 = 21 \\rightarrow y = 3.6\\).
3. \\(x = 4.6\\). Check: \\(3(4.6) + 2(3.6) = 13.8 + 7.2 = 21\\) ✓

### Quadratic formula
For \\(ax^2 + bx + c = 0\\):
$$x = \\frac{-b \\pm \\sqrt{b^2 - 4ac}}{2a}$$
The discriminant \\(b^2 - 4ac\\) tells you the nature of the roots:
- \\(> 0\\): two distinct real roots
- \\(= 0\\): one repeated root
- \\(< 0\\): no real roots

### Changing the subject
Isolate the target letter step by step, doing the same operation to both sides.
**Example:** make \\(t\\) the subject of \\(s = ut + \\frac{1}{2}at^2\\):
\\(\\frac{1}{2}at^2 + ut - s = 0\\) → use the quadratic formula:
$$t = \\frac{-u \\pm \\sqrt{u^2 + 2as}}{a}$$

## Common mistakes & exam traps

- \\(-2x > 6 \\rightarrow x < -3\\) — forgetting to flip the inequality sign.
- Checking the answer in only ONE equation — a wrong pair can satisfy one.
- \\(2x^2 - 8x = 2x(x-4)\\), not just \\((x-4)\\) — "factorise fully" means take out everything.
- Losing a negative sign when subtracting: \\(3x - (2x - 4) = 3x - 2x + 4\\).

## Exam technique

1. For "solve" questions, always substitute your answer back to check.
2. For word problems, define the unknown first: "Let x be the number of bags."
3. If a quadratic won't factorise, use the formula — but write the formula down first for method marks.
4. GCE answers are usually whole numbers. If you get a fraction that looks ugly, recheck your working.

## Memory hooks

- **Difference of two squares:** "Same terms, opposite signs, square each, minus between."
- **Quadratic formula:** "Minus b, plus or minus, the square root of b squared minus 4ac, all over 2a."

## Quick practice

1. Solve \\(3x + 2y = 21\\), \\(x - y = 1\\). **[x = 4.6, y = 3.6]**
2. Factorise \\(x^2 - 5x + 6\\). **[(x − 2)(x − 3)]**
3. Solve \\(2x^2 - 3x - 5 = 0\\) using the formula. **[x = 2.5 or x = −1]**
4. Make \\(r\\) the subject of \\(A = \\pi r^2\\). **[r = √(A/π)]**`,
  },
  {
    subject: "Mathematics",
    slug: "math",
    topic: "Geometry and mensuration",
    title: "Geometry & Mensuration Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Geometry and mensuration questions are guaranteed on the GCE paper and are among the most "mark-able" — the method is clear and the working is easy to show. Circle theorems and area/volume formulas are favourites because they test whether you can quote a rule and apply it correctly.

## Core concepts

### Angle facts
- Straight line: 180°. Full turn: 360°. Vertically opposite angles are equal.
- Parallel lines: alternate angles (Z-shape) equal; corresponding angles (F-shape) equal; co-interior angles (C-shape) sum to 180°.
- Triangle: angles sum to 180°. Quadrilateral: 360°.
- Polygon: interior angle sum \\(= (n-2) \\times 180°\\). Each exterior angle of a regular polygon \\(= \\frac{360°}{n}\\).

### Circle theorems (quote by name!)
1. **Angle at centre** = 2 × angle at circumference (same arc).
2. **Angle in a semicircle** = 90°.
3. **Angles in the same segment** are equal.
4. **Cyclic quadrilateral:** opposite angles sum to 180°.
5. **Tangent ⊥ radius** at the point of contact.
6. **Alternate segment theorem:** angle between tangent and chord equals the angle in the alternate segment.

### Mensuration formulas
| Shape | Formula |
|---|---|
| Rectangle | \\(A = l \\times w\\) |
| Triangle | \\(A = \\frac{1}{2}bh\\) |
| Trapezium | \\(A = \\frac{1}{2}(a+b)h\\) |
| Circle | \\(A = \\pi r^2\\), \\(C = 2\\pi r\\) |
| Cylinder | \\(V = \\pi r^2 h\\), \\(SA = 2\\pi r^2 + 2\\pi rh\\) |
| Cone | \\(V = \\frac{1}{3}\\pi r^2 h\\) |
| Sphere | \\(V = \\frac{4}{3}\\pi r^3\\), \\(SA = 4\\pi r^2\\) |
| Prism | \\(V = \\text{cross-section area} \\times \\text{length}\\) |

### Unit conversions
- \\(1\\,m^2 = 10,000\\,cm^2\\) (×100 twice)
- \\(1\\,m^3 = 1,000,000\\,cm^3\\) (×100 three times)
- \\(1\\,litre = 1000\\,cm^3\\)

### Similarity and scale
- Lengths scale by factor \\(k\\), areas by \\(k^2\\), volumes by \\(k^3\\).
- If a map is 1 : 50,000, then 1 cm on the map = 50,000 cm = 500 m on the ground.

## Common mistakes & exam traps

- Using the wrong formula for a cylinder's surface area (forgetting the two circles).
- Mixing up radius and diameter — always halve the diameter first.
- For \\(\\pi\\), GCE often says "take \\(\\pi = \\frac{22}{7}\\)" — use the value they give.
- For similar shapes, squaring/cubing the wrong factor: areas use \\(k^2\\), volumes use \\(k^3\\).

## Exam technique

1. In circle theorem questions, **name the theorem** you are using — it earns the mark.
2. Draw the diagram again on your answer sheet and mark the given angles.
3. For compound shapes, split into simple shapes, find each area, then add or subtract.
4. State the formula before substituting — method marks.

## Memory hooks

- **Polygon angles:** "n minus 2, times 180."
- **Circle theorems:** "Centre is double, semicircle is right, same segment equal, cyclic adds to 180."

## Quick practice

1. A pentagon has angles \\(x, x+10, x+20, x+30, x+40\\). Find \\(x\\). **[96°]**
2. A cone has radius 7 cm and height 24 cm. Take \\(\\pi = \\frac{22}{7}\\). Find its volume. **[1232 cm³]**
3. A cylindrical tank has radius 1.2 m and height 2.5 m. How many litres does it hold? **[≈11,300 L]**
4. Two similar triangles have areas 9 cm² and 36 cm². What is the scale factor of their sides? **[2]**`,
  },
  {
    subject: "Mathematics",
    slug: "math",
    topic: "Trigonometry",
    title: "Trigonometry Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Trigonometry turns up every year in GCE Ordinary Level Mathematics — usually as a right-angled triangle problem (ladders, towers, angles of elevation/depression) and sometimes as a non-right-angled triangle using the sine and cosine rules. It is also the bridge to bearings and vectors.

## Core concepts

### Pythagoras' theorem
For a right-angled triangle: \\(a^2 + b^2 = c^2\\) where \\(c\\) is the hypotenuse.
**Example:** sides 6 cm and 8 cm → \\(c^2 = 36 + 64 = 100\\) → \\(c = 10\\) cm.

### SOHCAHTOA
- \\(\\sin \\theta = \\frac{\\text{opposite}}{\\text{hypotenuse}}\\)
- \\(\\cos \\theta = \\frac{\\text{adjacent}}{\\text{hypotenuse}}\\)
- \\(\\tan \\theta = \\frac{\\text{opposite}}{\\text{adjacent}}\\)

### Angles of elevation and depression
- **Elevation:** looking UP from the horizontal.
- **Depression:** looking DOWN from the horizontal.
- The angle is always measured from the **horizontal**, never the vertical.

**Worked example:** A ladder 6 m long leans against a wall at 70° to the ground. How high up the wall does it reach?
\\(\\text{height} = 6 \\sin 70° = 6 \\times 0.9397 = 5.64\\) m.

### The sine rule (any triangle)
$$\\frac{a}{\\sin A} = \\frac{b}{\\sin B} = \\frac{c}{\\sin C}$$
Use when you know two angles and one side, or two sides and a non-included angle.

### The cosine rule (any triangle)
$$c^2 = a^2 + b^2 - 2ab\\cos C$$
Use when you know two sides and the included angle, or all three sides.

### Area of a triangle
$$\\text{Area} = \\frac{1}{2}ab\\sin C$$

**Worked example:** \\(a = 8\\), \\(b = 5\\), \\(C = 60°\\).
\\(c^2 = 64 + 25 - 2(8)(5)\\cos 60° = 89 - 40 = 49\\) → \\(c = 7\\).

## Common mistakes & exam traps

- Calculator left in RADIAN mode — GCE uses **degrees**. Always check the DEG indicator.
- Measuring the depression angle from the vertical instead of the horizontal.
- Using SOHCAHTOA on a non-right-angled triangle — use sine/cosine rules instead.
- Forgetting to take the square root at the end of Pythagoras.

## Exam technique

1. Draw and label the triangle first. Mark the right angle.
2. Decide which rule applies: right angle → SOHCAHTOA; two angles + side → sine rule; two sides + included angle → cosine rule.
3. Write the formula, substitute, then calculate.
4. Give answers to the accuracy requested (usually 3 s.f. or 1 d.p.).

## Memory hooks

- **SOHCAHTOA:** "Some Old Horses Chew Apples Happily Through Old Age."
- **Sine rule:** "Side over sine — all equal."
- **Cosine rule:** "c squared equals a squared plus b squared minus 2ab cos C."

## Quick practice

1. A ladder 6 m long makes 70° with the ground. How high does it reach? **[5.64 m]**
2. From a tower 40 m high, the angle of depression of a car is 28°. How far is the car from the tower's base? **[40/tan28° ≈ 75.2 m]**
3. In triangle ABC, \\(a = 8\\), \\(b = 5\\), \\(C = 60°\\). Find \\(c\\). **[7]**
4. A right triangle has legs 9 cm and 12 cm. Find the hypotenuse. **[15 cm]**`,
  },
  {
    subject: "Mathematics",
    slug: "math",
    topic: "Statistics and probability",
    title: "Statistics & Probability Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Statistics and probability are reliable marks on the GCE paper. The calculations are straightforward once you know the definitions, and examiners love frequency tables, mean/median/mode, and simple probability with everyday Cameroon examples (marbles, students, market produce).

## Core concepts

### Averages and spread
- **Mean** \\(= \\frac{\\Sigma fx}{\\Sigma f}\\) for a frequency table (sum of value × frequency, divided by total frequency).
- **Median:** the middle value when data is ordered. For \\(n\\) values, it is the \\(\\frac{n+1}{2}\\)th value.
- **Mode:** the most frequent value.
- **Range** \\(= \\text{max} - \\text{min}\\).

**Worked example:** the mean of 5 numbers is 12, so the total is 60. If four numbers are 8, 10, 14, 16 (sum 48), the missing number is \\(60 - 48 = 12\\).

### Probability basics
- \\(P(\\text{event}) = \\frac{\\text{favourable outcomes}}{\\text{total outcomes}}\\)
- Probabilities always lie between 0 and 1.
- \\(P(\\text{not A}) = 1 - P(A)\\).
- **Independent events:** \\(P(A \\text{ and } B) = P(A) \\times P(B)\\).
- **Mutually exclusive:** \\(P(A \\text{ or } B) = P(A) + P(B)\\).
- **General addition:** \\(P(A \\text{ or } B) = P(A) + P(B) - P(A \\text{ and } B)\\).

### Venn diagrams
- \\(n(A \\cup B) = n(A) + n(B) - n(A \\cap B)\\).
- "Neither" = total − \\(n(A \\cup B)\\).

**Worked example:** 60 students, 38 drink tea, 32 drink coffee, 12 drink both.
\\(n(A \\cup B) = 38 + 32 - 12 = 58\\). Neither = \\(60 - 58 = 2\\).

## Common mistakes & exam traps

- Forgetting to draw the \\(fx\\) column — the table itself earns marks.
- Using the wrong total: the denominator is the **total frequency**, not the number of different values.
- Adding probabilities of events that are NOT mutually exclusive (double-counting the overlap).
- For "without replacement", the denominator decreases after each draw.

## Exam technique

1. Always draw the frequency table with an \\(fx\\) column and a total row.
2. For probability word problems, write the fraction before simplifying.
3. For "at least one" questions, use \\(1 - P(\\text{none})\\).
4. Draw the Venn diagram even if not asked — it organises your thinking.

## Memory hooks

- **Mean:** "Sum of fx over sum of f."
- **Probability:** "Favourable over total."
- **Or = add, And = multiply** (for independent/mutually exclusive cases).

## Quick practice

1. 60 students: 38 tea, 32 coffee, 12 both. How many drink neither? **[2]**
2. The mean of 8, 10, 14, 16, x is 12. Find x. **[12]**
3. \\(P(\\text{red}) = \\frac{3}{8}\\), \\(P(\\text{blue}) = \\frac{2}{8}\\), independent. Find \\(P(\\text{both})\\). **[6/64 = 3/32]**
4. A bag has 4 red and 6 blue marbles. Two are drawn without replacement. Find \\(P(\\text{both red})\\). **[4/10 × 3/9 = 2/15]**`,
  },
  {
    subject: "Mathematics",
    slug: "math",
    topic: "Vectors and transformations",
    title: "Vectors & Transformations Cheatsheet",
    estimatedMinutes: 25,
    body: `## Why this topic matters

Vectors and transformations are a compact, high-scoring topic. Once you learn the notation and the four transformations, the questions become mechanical. GCE often combines them — for example, describing a transformation that maps one shape onto another.

## Core concepts

### Vectors
- A vector has **magnitude and direction**; a scalar has only magnitude.
- Column vector \\(\\binom{x}{y}\\): \\(x\\) right (+)/left (−), \\(y\\) up (+)/down (−).
- **Addition:** add components. \\(\\binom{2}{3} + \\binom{1}{-4} = \\binom{3}{-1}\\).
- **Scalar multiplication:** multiply each component. \\(3\\binom{2}{-1} = \\binom{6}{-3}\\).
- **Magnitude:** \\(|\\mathbf{v}| = \\sqrt{x^2 + y^2}\\).
- **Parallel vectors:** one is a scalar multiple of the other.

### The four transformations
| Transformation | Description | Matrix |
|---|---|---|
| Reflection in x-axis | \\((x,y) \\to (x,-y)\\) | \\(\\begin{pmatrix}1&0\\\\0&-1\\end{pmatrix}\\) |
| Reflection in y-axis | \\((x,y) \\to (-x,y)\\) | \\(\\begin{pmatrix}-1&0\\\\0&1\\end{pmatrix}\\) |
| Rotation 90° anticlockwise | \\((x,y) \\to (-y,x)\\) | \\(\\begin{pmatrix}0&-1\\\\1&0\\end{pmatrix}\\) |
| Rotation 180° | \\((x,y) \\to (-x,-y)\\) | \\(\\begin{pmatrix}-1&0\\\\0&-1\\end{pmatrix}\\) |
| Enlargement scale k | \\((x,y) \\to (kx,ky)\\) | \\(\\begin{pmatrix}k&0\\\\0&k\\end{pmatrix}\\) |

- **Translation:** add a column vector to every point. The shape does not change size or orientation.
- **Enlargement:** needs a **scale factor** and a **centre of enlargement**. Lines through the centre and each vertex; distances multiply by k.
- **Invariant points:** points that do not move under a transformation.

## Common mistakes & exam traps

- Confusing rotation direction: 90° clockwise \\((x,y) \\to (y,-x)\\), anticlockwise \\((x,y) \\to (-y,x)\\).
- Forgetting the centre of enlargement — "enlarge by scale factor 2" is incomplete without it.
- Describing a transformation without all details: "reflection" needs the mirror line; "rotation" needs angle, direction and centre.
- Adding vectors when you should subtract (e.g. \\(\\overrightarrow{AB} = \\mathbf{b} - \\mathbf{a}\\)).

## Exam technique

1. For \\(\\overrightarrow{AB}\\), remember: **B minus A**.
2. When describing a transformation, give ALL the details (type, line/centre, scale factor/angle).
3. Draw the image on the grid — a correct diagram earns marks even if your description is imperfect.
4. Check invariant points to verify your transformation.

## Memory hooks

- **AB vector:** "From A to B, do B minus A."
- **Rotation 90° anticlockwise:** "(x, y) becomes (minus y, x)."

## Quick practice

1. \\(\\mathbf{a} = \\binom{3}{-2}\\), \\(\\mathbf{b} = \\binom{1}{4}\\). Find \\(\\mathbf{a} + \\mathbf{b}\\) and \\(|\\mathbf{a}|\\). **[\\binom{4}{2}, √13]**
2. Reflect the point (3, 5) in the y-axis. **[(−3, 5)]**
3. Rotate (2, 1) by 90° anticlockwise about the origin. **[(−1, 2)]**
4. Enlarge triangle with vertices (1,1), (2,1), (1,2) by scale factor 2, centre origin. **[(2,2), (4,2), (2,4)]**`,
  },
  {
    subject: "Mathematics",
    slug: "math",
    topic: "Set theory",
    title: "Set Theory Cheatsheet",
    estimatedMinutes: 20,
    body: `## Why this topic matters

Set theory is a short, self-contained topic that appears early in the GCE paper. It tests clear notation and careful counting. The Venn diagram is the examiner's favourite tool because it combines set notation with arithmetic.

## Core concepts

### Notation
- \\(A = \\{1, 2, 3\\}\\) — a set is a collection of distinct objects.
- \\(\\in\\) means "is an element of": \\(2 \\in A\\).
- \\(\\notin\\) means "is not an element of": \\(5 \\notin A\\).
- \\(A \\cup B\\) — **union**: everything in A or B (or both).
- \\(A \\cap B\\) — **intersection**: everything in both A and B.
- \\(A'\\) — **complement**: everything NOT in A (within the universal set).
- \\(\\emptyset\\) — the empty set.
- \\(n(A)\\) — the number of elements in A.

### Key formulas
- \\(n(A \\cup B) = n(A) + n(B) - n(A \\cap B)\\)
- \\(n(A') = n(\\mathcal{U}) - n(A)\\)
- Disjoint sets: \\(A \\cap B = \\emptyset\\), so \\(n(A \\cup B) = n(A) + n(B)\\).

### Venn diagrams
Draw a rectangle for the universal set \\(\\mathcal{U}\\), overlapping circles for the sets. Fill in the intersection first, then work outwards.

**Worked example:** In a class of 40 students, 25 play football, 18 play basketball, 10 play both.
- Both: 10. Football only: 15. Basketball only: 8. Neither: \\(40 - (15+10+8) = 7\\).

## Common mistakes & exam traps

- Counting the intersection twice — always subtract \\(n(A \\cap B)\\).
- Confusing \\(\\cup\\) (union, "cup" holds everything) with \\(\\cap\\) (intersection, "cap" holds the overlap).
- Forgetting the universal set when drawing a Venn diagram.
- Writing \\(A \\cup B\\) when the question means \\(A \\cap B\\).

## Exam technique

1. Fill the Venn diagram from the middle (intersection) outwards.
2. Check that all regions add up to the total.
3. Read the question carefully: "only A" means \\(A - (A \\cap B)\\).

## Memory hooks

- **Union ∪:** "The cup holds everything."
- **Intersection ∩:** "The cap covers the overlap."

## Quick practice

1. \\(A = \\{1,2,3,4\\}\\), \\(B = \\{3,4,5\\}\\). Find \\(A \\cup B\\) and \\(A \\cap B\\). **[{1,2,3,4,5} and {3,4}]**
2. In a class of 40, 25 play football, 18 play basketball, 10 play both. How many play neither? **[7]**
3. If \\(n(\\mathcal{U}) = 50\\) and \\(n(A) = 18\\), find \\(n(A')\\). **[32]**`,
  },
  {
    subject: "Mathematics",
    slug: "math",
    topic: "Matrices",
    title: "Matrices Cheatsheet",
    estimatedMinutes: 25,
    body: `## Why this topic matters

Matrices appear in the later part of the GCE Ordinary Level syllabus. The operations are mechanical — addition, multiplication, determinant, inverse — and the questions reward careful, neat working. Matrix multiplication is the most common source of lost marks.

## Core concepts

### Basics
- A matrix is a rectangular array of numbers. \\(\\begin{pmatrix}2 & 3\\\\1 & 4\\end{pmatrix}\\) is a 2×2 matrix (2 rows, 2 columns).
- **Order:** rows × columns. A 2×3 matrix has 2 rows and 3 columns.

### Addition and subtraction
Only possible when matrices have the **same order**. Add/subtract corresponding elements.

### Scalar multiplication
Multiply every element by the scalar.
\\(3\\begin{pmatrix}2 & -1\\\\0 & 4\\end{pmatrix} = \\begin{pmatrix}6 & -3\\\\0 & 12\\end{pmatrix}\\).

### Multiplication
- The number of **columns** of the first must equal the number of **rows** of the second.
- Result order: rows of first × columns of second.
- Multiply row by column: each element is the sum of products.

**Worked example:**
$$\\begin{pmatrix}1 & 2\\\\3 & 4\\end{pmatrix}\\begin{pmatrix}5 & 6\\\\7 & 8\\end{pmatrix} = \\begin{pmatrix}1(5)+2(7) & 1(6)+2(8)\\\\3(5)+4(7) & 3(6)+4(8)\\end{pmatrix} = \\begin{pmatrix}19 & 22\\\\43 & 50\\end{pmatrix}$$

### Determinant of a 2×2 matrix
For \\(A = \\begin{pmatrix}a & b\\\\c & d\\end{pmatrix}\\), \\(\\det(A) = ad - bc\\).
If \\(ad - bc = 0\\), the matrix is **singular** (no inverse).

### Inverse of a 2×2 matrix
$$A^{-1} = \\frac{1}{ad-bc}\\begin{pmatrix}d & -b\\\\-c & a\\end{pmatrix}$$

**Worked example:** \\(A = \\begin{pmatrix}2 & 3\\\\1 & 4\\end{pmatrix}\\). \\(\\det = 8 - 3 = 5\\).
$$A^{-1} = \\frac{1}{5}\\begin{pmatrix}4 & -3\\\\-1 & 2\\end{pmatrix}$$

### Identity matrix
\\(I = \\begin{pmatrix}1 & 0\\\\0 & 1\\end{pmatrix}\\). \\(AI = IA = A\\).

## Common mistakes & exam traps

- **Matrix multiplication is NOT commutative:** \\(AB \\ne BA\\) in general.
- Multiplying in the wrong order — the row of the first multiplies the column of the second.
- Forgetting the sign changes in the inverse (swap a and d, negate b and c).
- Dividing by a zero determinant — a singular matrix has no inverse.

## Exam technique

1. Write the matrices clearly and keep rows/columns aligned.
2. For multiplication, check the orders first: (m×n)(n×p) → m×p.
3. To solve \\(AX = B\\), multiply both sides by \\(A^{-1}\\) on the LEFT: \\(X = A^{-1}B\\).
4. Verify by multiplying \\(A A^{-1}\\) — you should get \\(I\\).

## Memory hooks

- **Inverse:** "Swap the diagonal, negate the other, divide by the determinant."
- **Multiplication:** "Row of first, column of second."

## Quick practice

1. \\(A = \\begin{pmatrix}1 & 2\\\\3 & 4\\end{pmatrix}\\), \\(B = \\begin{pmatrix}5 & 6\\\\7 & 8\\end{pmatrix}\\). Find \\(AB\\). **[\\begin{pmatrix}19 & 22\\\\43 & 50\\end{pmatrix}]**
2. Find the determinant of \\(\\begin{pmatrix}2 & 3\\\\1 & 4\\end{pmatrix}\\). **[5]**
3. Find the inverse of \\(\\begin{pmatrix}2 & 3\\\\1 & 4\\end{pmatrix}\\). **[1/5 \\begin{pmatrix}4 & −3\\\\−1 & 2\\end{pmatrix}]**
4. Is \\(\\begin{pmatrix}2 & 4\\\\1 & 2\\end{pmatrix}\\) singular? **[Yes, det = 0]**`,
  },

  // ═══════════════════════════════════════════════════════════════════════════
  // ADDITIONAL MATHEMATICS — Form 5 (Ordinary Level)
  // ═══════════════════════════════════════════════════════════════════════════
  {
    subject: "Additional Mathematics",
    slug: "amath",
    topic: "Factor and remainder theorem",
    title: "Factor & Remainder Theorem Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

The factor and remainder theorems are the standard route into solving cubic and higher-degree polynomial equations — a guaranteed feature of the Additional Mathematics paper. They also connect to curve sketching and to finding where a curve crosses the x-axis.

## Core concepts

### The remainder theorem
When a polynomial \\(f(x)\\) is divided by \\((x - a)\\), the remainder is \\(f(a)\\).
**Example:** \\(f(x) = x^3 - 2x + 1\\). Divide by \\((x - 1)\\): remainder \\(= f(1) = 1 - 2 + 1 = 0\\).

### The factor theorem
\\((x - a)\\) is a factor of \\(f(x)\\) **if and only if** \\(f(a) = 0\\).
This means \\(a\\) is a root of the equation \\(f(x) = 0\\).

### Solving a cubic — the standard method
1. Find one root by **inspection** (try ±1, ±2, ±3 — factors of the constant term).
2. Divide the cubic by the corresponding factor (long division or synthetic division).
3. Factorise the resulting quadratic.
4. Write all three roots.

**Worked example:** solve \\(x^3 - 6x^2 + 11x - 6 = 0\\).
1. Try \\(x = 1\\): \\(1 - 6 + 11 - 6 = 0\\) ✓ so \\((x-1)\\) is a factor.
2. Divide: \\(x^3 - 6x^2 + 11x - 6 = (x-1)(x^2 - 5x + 6)\\).
3. Factorise: \\((x-1)(x-2)(x-3)\\).
4. Roots: \\(x = 1, 2, 3\\).

### Finding unknown coefficients
If \\((x - a)\\) is a factor, substitute \\(x = a\\) and set the result to zero to form an equation in the unknown coefficient.

**Worked example:** \\(f(x) = x^3 + ax^2 - 5x + b\\) has factors \\((x-2)\\) and \\((x+1)\\).
- \\(f(2) = 8 + 4a - 10 + b = 0\\) → \\(4a + b = 2\\).
- \\(f(-1) = -1 + a + 5 + b = 0\\) → \\(a + b = -4\\).
- Solving: \\(a = 2\\), \\(b = -6\\).

## Common mistakes & exam traps

- Trying only positive values when inspecting roots — negative roots are common.
- Forgetting that \\((x + 1)\\) is a factor means \\(f(-1) = 0\\), not \\(f(1) = 0\\).
- Making arithmetic slips in long division — check by multiplying back.
- Writing "x = 1 is a factor" — factors are expressions, roots are values.

## Exam technique

1. Always test the factors of the constant term first.
2. Show the substitution \\(f(a) = 0\\) explicitly — it earns the method mark.
3. After dividing, check the quadratic factorises; if not, use the quadratic formula.
4. Verify your roots by substituting back into the original cubic.

## Memory hooks

- **Factor theorem:** "If f(a) = 0, then (x − a) is a factor — zero in, factor out."
- **Remainder theorem:** "Divide by (x − a), the remainder is f(a)."

## Quick practice

1. \\(f(x) = x^3 + ax^2 - 5x + b\\) has factors \\((x-2)\\) and \\((x+1)\\). Find a and b. **[a = 2, b = −6]**
2. Solve \\(x^3 - 2x^2 - 5x + 6 = 0\\). **[x = −2, 1, 3]**
3. Find the remainder when \\(x^3 - 3x + 2\\) is divided by \\((x - 2)\\). **[4]**
4. Show that \\((x + 2)\\) is a factor of \\(x^3 + 3x^2 - 4\\). **[f(−2) = −8 + 12 − 4 = 0]**`,
  },
  {
    subject: "Additional Mathematics",
    slug: "amath",
    topic: "Differentiation",
    title: "Differentiation Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Differentiation is the heart of Additional Mathematics. It appears in nearly every paper — as a direct "differentiate this" question, as a tangent/normal problem, as a stationary-points question, and as a rates-of-change application. It is also the foundation for the calculus you will meet at A-Level.

## Core concepts

### Standard results
| Function | Derivative |
|---|---|
| \\(x^n\\) | \\(nx^{n-1}\\) |
| \\(\\sin x\\) | \\(\\cos x\\) |
| \\(\\cos x\\) | \\(-\\sin x\\) |
| \\(e^x\\) | \\(e^x\\) |
| \\(\\ln x\\) | \\(\\frac{1}{x}\\) |
| \\(kx\\) | \\(k\\) |
| constant | 0 |

### Rules
- **Chain rule:** \\(\\frac{dy}{dx} = \\frac{dy}{du} \\times \\frac{du}{dx}\\).
- **Product rule:** \\(\\frac{d}{dx}(uv) = u'v + uv'\\).
- **Quotient rule:** \\(\\frac{d}{dx}\\left(\\frac{u}{v}\\right) = \\frac{u'v - uv'}{v^2}\\).

### Differentiation from first principles
$$f'(x) = \\lim_{h \\to 0} \\frac{f(x+h) - f(x)}{h}$$
GCE sometimes asks for this for a simple function like \\(f(x) = x^2\\):
$$f'(x) = \\lim_{h \\to 0} \\frac{(x+h)^2 - x^2}{h} = \\lim_{h \\to 0} \\frac{2xh + h^2}{h} = 2x$$

### Tangents and normals
- **Tangent** at \\(x = a\\): gradient \\(= f'(a)\\).
- **Normal:** perpendicular, gradient \\(= -\\frac{1}{f'(a)}\\).

**Worked example:** \\(y = x^3 - 2x\\) at \\(x = 1\\).
\\(\\frac{dy}{dx} = 3x^2 - 2 = 1\\). Point: \\((1, -1)\\). Tangent: \\(y + 1 = 1(x - 1)\\) → \\(y = x - 2\\).

### Stationary points
- Solve \\(\\frac{dy}{dx} = 0\\).
- Classify using \\(\\frac{d^2y}{dx^2}\\): positive → minimum, negative → maximum, zero → point of inflection (check sign change).

### Rates of change
\\(\\frac{dy}{dt} = \\frac{dy}{dx} \\times \\frac{dx}{dt}\\) (chain rule).

## Common mistakes & exam traps

- Forgetting the chain rule on \\((2x+1)^5\\) — you must multiply by the derivative of the inside.
- Using the product rule when you should expand first (expanding is often simpler).
- Confusing maximum and minimum — check the sign of \\(\\frac{d^2y}{dx^2}\\).
- For normals, forgetting the negative reciprocal of the gradient.

## Exam technique

1. Write \\(\\frac{dy}{dx} = ...\\) before differentiating — method marks.
2. For stationary points, always find the y-coordinate too (substitute x back).
3. For "maximum/minimum" word problems, define the variable, form the expression, differentiate, set to zero, and verify the nature.
4. Check units in rates-of-change problems.

## Memory hooks

- **Power rule:** "Bring the power down, reduce it by one."
- **Normal gradient:** "Flip and negate."

## Quick practice

1. Differentiate from first principles \\(f(x) = x^2\\). **[2x]**
2. Find the maximum point of \\(y = x^3 - 3x\\) on \\([-2, 2]\\). **[Maximum at x = −1, y = 2]**
3. Find the normal to \\(y = x^2 - 3x\\) at \\(x = 2\\). **[Gradient of tangent = 1, normal gradient = −1]**
4. Differentiate \\(y = (3x + 1)^4\\). **[12(3x+1)³]**`,
  },
  {
    subject: "Additional Mathematics",
    slug: "amath",
    topic: "Integration",
    title: "Integration Cheatsheet",
    estimatedMinutes: 35,
    body: `## Why this topic matters

Integration is the inverse of differentiation and the second pillar of Additional Mathematics calculus. It is tested as indefinite integrals, definite integrals, and area-under-curve problems. The area question is a near-certainty on the paper.

## Core concepts

### Standard integrals
| Function | Integral |
|---|---|
| \\(x^n\\) | \\(\\frac{x^{n+1}}{n+1} + c\\), \\(n \\ne -1\\) |
| \\(\\frac{1}{x}\\) | \\(\\ln|x| + c\\) |
| \\(\\sin x\\) | \\(-\\cos x + c\\) |
| \\(\\cos x\\) | \\(\\sin x + c\\) |
| \\(e^x\\) | \\(e^x + c\\) |
| \\(k\\) | \\(kx + c\\) |

### Indefinite vs definite
- Indefinite: \\(\\int f(x)\\,dx\\) — always add \\(+c\\).
- Definite: \\(\\int_a^b f(x)\\,dx = [F(x)]_a^b = F(b) - F(a)\\).

**Worked example:** \\(\\int_0^3 x^2\\,dx = \\left[\\frac{x^3}{3}\\right]_0^3 = \\frac{27}{3} - 0 = 9\\).

### Area under a curve
- Area between curve and x-axis: \\(\\int_a^b y\\,dx\\).
- **Check whether the curve crosses the axis** — split the interval where the sign changes, otherwise areas cancel.
- Area between two curves: \\(\\int (\\text{upper} - \\text{lower})\\,dx\\) over the intersection points.

**Worked example:** area between \\(y = x\\) and \\(y = x^2\\).
Intersections: \\(x = x^2\\) → \\(x = 0, 1\\).
$$\\int_0^1 (x - x^2)\\,dx = \\left[\\frac{x^2}{2} - \\frac{x^3}{3}\\right]_0^1 = \\frac{1}{2} - \\frac{1}{3} = \\frac{1}{6}$$

### Kinematics link
- \\(v = \\frac{ds}{dt}\\), \\(a = \\frac{dv}{dt}\\).
- \\(s = \\int v\\,dt\\), \\(v = \\int a\\,dt\\).
- A body is **at rest** when \\(v = 0\\).

## Common mistakes & exam traps

- Forgetting the \\(+c\\) on indefinite integrals — a guaranteed lost mark.
- Forgetting to check if the curve crosses the x-axis before finding an area.
- Subtracting the wrong way round — always upper minus lower.
- Integrating \\(\\frac{1}{x}\\) as \\(\\ln x\\) without the absolute value.

## Exam technique

1. **Check by differentiating** your answer — if you get the integrand back, you are right.
2. For area problems, sketch the curve first.
3. Write the integral with limits clearly before evaluating.
4. For kinematics, integrate with initial conditions to find the constant.

## Memory hooks

- **Integration:** "Add one to the power, divide by the new power."
- **Area between curves:** "Top minus bottom."

## Quick practice

1. Evaluate \\(\\int_1^4 (2\\sqrt{x} + 3x)\\,dx\\). **[≈51.8]**
2. Find the area between \\(y = x\\) and \\(y = x^2\\). **[1/6]**
3. A particle moves with \\(v = t^3 - 6t^2\\). When is it at rest? **[t = 0 and t = 6]**
4. Integrate \\(\\int (3x^2 + 2x + 1)\\,dx\\). **[x³ + x² + x + c]**`,
  },
  {
    subject: "Additional Mathematics",
    slug: "amath",
    topic: "Coordinate geometry",
    title: "Coordinate Geometry Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Coordinate geometry links algebra and graphs. It covers straight lines, gradients, midpoints, distance, and circles. GCE tests it directly and as a tool inside other questions (e.g. finding where a tangent meets a curve).

## Core concepts

### The straight line
- **Gradient:** \\(m = \\frac{y_2 - y_1}{x_2 - x_1}\\).
- **Equation forms:**
  - \\(y = mx + c\\) (gradient–intercept)
  - \\(y - y_1 = m(x - x_1)\\) (point–gradient)
  - \\(ax + by + c = 0\\) (general form)
- **Parallel lines:** equal gradients.
- **Perpendicular lines:** \\(m_1 \\times m_2 = -1\\).

### Midpoint and distance
- Midpoint: \\(\\left(\\frac{x_1+x_2}{2}, \\frac{y_1+y_2}{2}\\right)\\).
- Distance: \\(\\sqrt{(x_2-x_1)^2 + (y_2-y_1)^2}\\).

### The circle
- Centre \\((a,b)\\), radius \\(r\\): \\((x-a)^2 + (y-b)^2 = r^2\\).
- General form: \\(x^2 + y^2 + 2gx + 2fy + c = 0\\), centre \\((-g, -f)\\), radius \\(\\sqrt{g^2 + f^2 - c}\\).
- A tangent to a circle is perpendicular to the radius at the point of contact.

**Worked example:** find the equation of the tangent to \\(x^2 + y^2 = 25\\) at \\((3, 4)\\).
Radius gradient \\(= \\frac{4}{3}\\), so tangent gradient \\(= -\\frac{3}{4}\\).
\\(y - 4 = -\\frac{3}{4}(x - 3)\\) → \\(3x + 4y = 25\\).

### Intersections
- Line meets curve: substitute the line into the curve and solve.
- The discriminant tells you the number of intersections (2, 1 tangent, or 0).

## Common mistakes & exam traps

- Using the wrong gradient formula (subtracting in the wrong order).
- Forgetting that perpendicular gradients multiply to −1.
- Mixing up centre and radius when reading the circle equation.
- For the tangent, using the radius gradient instead of the negative reciprocal.

## Exam technique

1. Sketch the situation — a quick diagram prevents sign errors.
2. For "line meets curve" questions, always substitute and solve systematically.
3. Write the final equation in the form requested (often \\(ax + by + c = 0\\)).
4. Check your answer by substituting the given point.

## Memory hooks

- **Perpendicular gradients:** "Flip and negate."
- **Circle equation:** "x minus a, squared, plus y minus b, squared, equals r squared."

## Quick practice

1. Find the gradient of the line through (2, 3) and (6, 11). **[2]**
2. Find the midpoint and distance between (1, 2) and (5, 5). **[Midpoint (3, 3.5), distance 5]**
3. Write the equation of the circle with centre (2, −1) and radius 3. **[(x−2)² + (y+1)² = 9]**
4. Find the tangent to \\(x^2 + y^2 = 25\\) at (3, 4). **[3x + 4y = 25]**`,
  },
  {
    subject: "Additional Mathematics",
    slug: "amath",
    topic: "Logarithms and exponentials",
    title: "Logarithms & Exponentials Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Logarithms are the inverse of exponentials and appear in the Additional Mathematics paper as equations to solve, as simplification exercises, and inside growth/decay applications. They are also essential preparation for A-Level.

## Core concepts

### Definition
\\(\\log_a x = y\\) means \\(a^y = x\\). "The logarithm is the exponent."
- \\(\\log_a 1 = 0\\) (since \\(a^0 = 1\\)).
- \\(\\log_a a = 1\\) (since \\(a^1 = a\\)).

### The laws of logarithms
| Law | Example |
|---|---|
| \\(\\log_a (xy) = \\log_a x + \\log_a y\\) | \\(\\log 6 = \\log 2 + \\log 3\\) |
| \\(\\log_a \\left(\\frac{x}{y}\\right) = \\log_a x - \\log_a y\\) | \\(\\log \\frac{8}{2} = \\log 8 - \\log 2\\) |
| \\(\\log_a (x^n) = n\\log_a x\\) | \\(\\log x^3 = 3\\log x\\) |
| \\(\\log_a \\frac{1}{x} = -\\log_a x\\) | \\(\\log \\frac{1}{5} = -\\log 5\\) |

### Natural logarithms
\\(\\ln x = \\log_e x\\), where \\(e \\approx 2.718\\). \\(\\ln e = 1\\), \\(\\ln 1 = 0\\).

### Solving exponential equations
**Example:** solve \\(3^x = 20\\).
1. Take logs of both sides: \\(\\log 3^x = \\log 20\\).
2. \\(x\\log 3 = \\log 20\\).
3. \\(x = \\frac{\\log 20}{\\log 3} \\approx 2.727\\).

### Growth and decay
\\(N = N_0 e^{kt}\\) for growth, \\(N = N_0 e^{-kt}\\) for decay.
- \\(N_0\\) is the initial amount, \\(k\\) the growth/decay constant, \\(t\\) time.
- **Half-life:** the time for the amount to halve. Solve \\(\\frac{1}{2} = e^{-kt}\\).

## Common mistakes & exam traps

- Writing \\(\\log(x + y) = \\log x + \\log y\\) — **wrong**. The laws apply to products and quotients only.
- Forgetting that \\(\\log_a 1 = 0\\) and \\(\\log_a a = 1\\).
- Dropping the base when changing between forms.
- Solving \\(3^x = 20\\) by dividing by 3 — you must take logs.

## Exam technique

1. Isolate the exponential term before taking logs.
2. Use \\(\\ln\\) when the base is \\(e\\), \\(\\log_{10}\\) otherwise.
3. In growth/decay problems, identify \\(N_0\\), \\(k\\), and \\(t\\) from the question first.
4. Give answers to the requested accuracy (usually 3 s.f.).

## Memory hooks

- **Logarithm:** "The log is the exponent — what power of the base gives the number?"
- **Laws:** "Multiply becomes add, divide becomes subtract, power comes down."

## Quick practice

1. Solve \\(3^x = 20\\). **[x ≈ 2.727]**
2. Simplify \\(\\log_2 8 + \\log_2 4\\). **[5]**
3. Solve \\(\\ln x = 2\\). **[x = e² ≈ 7.39]**
4. A substance decays with \\(N = N_0 e^{-0.1t}\\). Find its half-life. **[t ≈ 6.93]**`,
  },
  {
    subject: "Additional Mathematics",
    slug: "amath",
    topic: "Series and sequences",
    title: "Series & Sequences Cheatsheet",
    estimatedMinutes: 30,
    body: `## Why this topic matters

Arithmetic and geometric progressions are a compact, reliable topic on the Additional Mathematics paper. The formulas are few and the questions are mechanical once you identify the type of progression. Sum-to-infinity and applications (interest, depreciation) are favourites.

## Core concepts

### Arithmetic progression (AP)
Each term differs by a constant \\(d\\).
- \\(n\\)th term: \\(u_n = a + (n-1)d\\).
- Sum of \\(n\\) terms: \\(S_n = \\frac{n}{2}[2a + (n-1)d] = \\frac{n}{2}(a + l)\\), where \\(l\\) is the last term.

**Worked example:** AP with \\(a = 3\\), \\(d = 2\\). 10th term \\(= 3 + 9(2) = 21\\). Sum of 10 terms \\(= \\frac{10}{2}(3 + 21) = 120\\).

### Geometric progression (GP)
Each term is multiplied by a constant ratio \\(r\\).
- \\(n\\)th term: \\(u_n = ar^{n-1}\\).
- Sum of \\(n\\) terms: \\(S_n = \\frac{a(1 - r^n)}{1 - r}\\), \\(r \\ne 1\\).
- **Sum to infinity** (when \\(|r| < 1\\)): \\(S_\\infty = \\frac{a}{1 - r}\\).

**Worked example:** GP with \\(a = 4\\), \\(r = \\frac{1}{2}\\). Sum to infinity \\(= \\frac{4}{1 - 1/2} = 8\\).

### Applications
- **Compound interest:** \\(A = P(1 + r)^n\\) — a GP.
- **Depreciation:** \\(A = P(1 - r)^n\\).
- **Recurring decimals:** \\(0.\\overline{3} = 0.3 + 0.03 + 0.003 + \\cdots = \\frac{0.3}{1 - 0.1} = \\frac{1}{3}\\).

## Common mistakes & exam traps

- Confusing AP and GP — check whether terms are added or multiplied.
- Using the sum formula with the wrong \\(n\\) (number of terms, not the last term).
- For sum to infinity, forgetting the condition \\(|r| < 1\\).
- In word problems, misidentifying \\(a\\) and \\(r\\) (e.g. 10% increase means \\(r = 1.1\\), not 0.1).

## Exam technique

1. Write down \\(a\\), \\(d\\) or \\(r\\), and \\(n\\) before substituting.
2. For "sum of the first n terms", count the terms carefully.
3. For interest problems, \\(r = 1 + \\frac{\\text{rate}}{100}\\) for growth.
4. Check whether the question wants the term or the sum.

## Memory hooks

- **AP:** "Add the common difference."
- **GP:** "Multiply by the common ratio."
- **Sum to infinity:** "First term over one minus r."

## Quick practice

1. AP: \\(a = 3\\), \\(d = 2\\). Find the 10th term and sum of 10 terms. **[21 and 120]**
2. GP: \\(a = 4\\), \\(r = \\frac{1}{2}\\). Find the sum to infinity. **[8]**
3. Write \\(0.\\overline{6}\\) as a fraction. **[2/3]**
4. 100,000 FCFA grows at 5% per year. Find the amount after 3 years. **[115,762.50 FCFA]**`,
  },
];
