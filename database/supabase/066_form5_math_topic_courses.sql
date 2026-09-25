-- Mathematics (ordinary): one course per GCE curriculum topic.
-- Replaces the single "Complete O-Level Mathematics Course" with concise,
-- example-rich topic courses.

begin;

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('math-number-numeration', 'Mathematics', 'Number and Numeration', 'Number bases, fractions, decimals, percentages, ratio, proportion, standard form, indices, logarithms, and commercial arithmetic.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('75da55db-be74-4f7d-b886-1452b432d04e'::uuid, 'math-number-numeration', 'Mathematics', 'Number and Numeration', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 'published', '# Number and Numeration

This topic is the foundation of every Paper 1 question. Examiners use it to test whether you can move confidently between number systems, calculate with indices and logarithms, and apply arithmetic to real money problems. Master it and you bank easy method marks before the harder algebra arrives.

### What you must know

- **Number sets:** Natural numbers (1, 2, 3 …), whole numbers (0, 1, 2 …), integers (… −2, −1, 0, 1, 2 …), rational numbers (any fraction p/q, q ≠ 0), irrational numbers (√2, π, non-repeating decimals), real numbers (all of the above).
- **Directed numbers:** Same signs give a positive product (−6 × −4 = 24); different signs give a negative product (−12 ÷ 3 = −4). Subtracting a negative is adding: 10 − (−5) = 15.
- **Fractions, decimals, percentages:** Divide the numerator by the denominator for a decimal (3/8 = 0.375); multiply by 100 for a percentage (0.375 = 37.5%). Add fractions with an LCM denominator: 2/3 + 1/4 = 8/12 + 3/12 = 11/12. To divide fractions, flip the second one and multiply: (2/5) ÷ (3/10) = (2/5) × (10/3) = 4/3.
- **Ratio, proportion, rates:** A ratio compares quantities in the same units. Share 60,000 FCFA in the ratio 2 : 3 → total parts = 5, so shares are 24,000 and 36,000. A rate compares different units (speed = distance ÷ time).
- **Standard form:** Write numbers as A × 10ⁿ where 1 ≤ A < 10. So 0.00045 = 4.5 × 10⁻⁴ and 73,000 = 7.3 × 10⁴.
- **Indices:** aᵐ × aⁿ = aᵐ⁺ⁿ; aᵐ ÷ aⁿ = aᵐ⁻ⁿ; (aᵐ)ⁿ = aᵐⁿ; a⁰ = 1; a⁻ⁿ = 1/aⁿ.
- **Logarithms:** logₐ N = x means aˣ = N. log₁₀ 1000 = 3 because 10³ = 1000. Use log rules: log(ab) = log a + log b, log(a/b) = log a − log b, log aⁿ = n log a.
- **Commercial arithmetic:** Profit % = (profit ÷ cost price) × 100. Simple interest I = PRT/100, where P is principal, R is rate %, T is time in years.

### Worked example 1

**A trader buys an article for 12,500 FCFA and sells it for 15,000 FCFA. Find the profit percentage.**

Step 1: Profit = Selling price − Cost price = 15,000 − 12,500 = 2,500 FCFA.

Step 2: Profit % = (Profit ÷ Cost price) × 100 = (2,500 ÷ 12,500) × 100.

Step 3: 2,500 ÷ 12,500 = 0.2, so 0.2 × 100 = **20%**.

The answer is 20%.

### Worked example 2

**Calculate the simple interest on 200,000 FCFA invested at 5% per annum for 3 years.**

Step 1: Identify P = 200,000, R = 5, T = 3.

Step 2: I = PRT/100 = (200,000 × 5 × 3) / 100.

Step 3: 200,000 × 5 × 3 = 3,000,000. Divide by 100: 3,000,000 ÷ 100 = **30,000 FCFA**.

The interest earned is 30,000 FCFA.

### Common mistakes to avoid

- Writing 0.375 as 37.5/100 and forgetting to simplify to 3/8.
- Confusing −3² (which is −9) with (−3)² (which is 9).
- Using the wrong base in a log question — always identify what aˣ = N asks for.

### Practice questions

1. Express 0.00045 in standard form.
2. Convert 1011₂ to base 10.
3. Share 45,000 FCFA between two partners in the ratio 4 : 5.
4. A shirt marked 8,000 FCFA is sold at a 15% discount. Find the selling price.

### Answers

1. 4.5 × 10⁻⁴
2. (1×8) + (0×4) + (1×2) + (1×1) = 11
3. Total parts = 9; shares are 20,000 FCFA and 25,000 FCFA.
4. Discount = 0.15 × 8,000 = 1,200; selling price = 8,000 − 1,200 = 6,800 FCFA.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('math-algebra', 'Mathematics', 'Algebra', 'Expressions, factorization, equations, inequalities, sequences, functions, graphs, and coordinate geometry.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('0eca0a07-f4c9-447d-97b2-5c0be3b3fd56'::uuid, 'math-algebra', 'Mathematics', 'Algebra', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 'published', '# Algebra

Algebra is the largest single block of marks in the GCE O-Level Mathematics paper. The examiner rewards method: write every step, keep equations balanced, and always check your answers by substitution. This topic covers the manipulation skills you will reuse in every other topic.

### What you must know

- **Simplifying expressions:** Collect like terms. 3x + 5x − 2x = 6x. Expand brackets: 2(x + 3) = 2x + 6. Expand double brackets: (x + 2)(x + 3) = x² + 5x + 6.
- **Factorization:** Take out the common factor first: 6x² + 9x = 3x(2x + 3). Difference of two squares: a² − b² = (a − b)(a + b), so x² − 9 = (x − 3)(x + 3). Quadratics: x² + 5x + 6 = (x + 2)(x + 3).
- **Linear equations:** Do the same to both sides. 3x + 7 = 22 → 3x = 15 → x = 5.
- **Quadratic equations:** Set to zero, factorize, then use the null factor law. If it will not factorize, use the formula x = (−b ± √(b² − 4ac)) / 2a. The discriminant b² − 4ac tells you the nature of the roots: positive → two real roots, zero → one repeated root, negative → no real roots.
- **Simultaneous equations:** Eliminate one variable by adding or subtracting after matching coefficients, then substitute back.
- **Inequalities:** Solve like equations but flip the sign when multiplying or dividing by a negative. −2x < 6 → x > −3.
- **Sequences:** Arithmetic: nth term = a + (n − 1)d. Geometric: nth term = arⁿ⁻¹.
- **Functions and graphs:** A linear function y = mx + c is a straight line. A quadratic y = ax² + bx + c is a parabola.
- **Coordinate geometry:** Gradient m = (y₂ − y₁)/(x₂ − x₁). Midpoint = ((x₁ + x₂)/2, (y₁ + y₂)/2). Distance = √((x₂ − x₁)² + (y₂ − y₁)²). Equation of a line: y − y₁ = m(x − x₁).

### Worked example 1

**Solve x² − 5x + 6 = 0.**

Step 1: Factorize: x² − 5x + 6 = (x − 2)(x − 3) = 0.

Step 2: Null factor law: x − 2 = 0 or x − 3 = 0.

Step 3: Solutions are **x = 2 or x = 3**.

Check: 2² − 5(2) + 6 = 4 − 10 + 6 = 0 ✓ and 3² − 5(3) + 6 = 9 − 15 + 6 = 0 ✓.

### Worked example 2

**Solve the simultaneous equations 2x + 3y = 7 and x − y = 1.**

Step 1: From the second equation, x = y + 1.

Step 2: Substitute into the first: 2(y + 1) + 3y = 7 → 2y + 2 + 3y = 7 → 5y = 5 → y = 1.

Step 3: Substitute back: x = 1 + 1 = 2.

The solution is **x = 2, y = 1**.

### Worked example 3

**Find the equation of the line through (1, 2) and (4, 8).**

Step 1: Gradient m = (8 − 2)/(4 − 1) = 6/3 = 2.

Step 2: Use y − y₁ = m(x − x₁): y − 2 = 2(x − 1).

Step 3: Expand: y − 2 = 2x − 2 → **y = 2x**.

### Common mistakes to avoid

- Forgetting to set a quadratic to zero before factorizing.
- Dropping the ± sign when taking square roots.
- Dividing by a negative in an inequality without flipping the sign.

### Practice questions

1. Factorize 3x² − 12.
2. Solve 5x − 3 = 2x + 9.
3. Solve x² − 4x + 3 = 0.
4. Find the gradient of the line joining (2, 3) and (6, 11).

### Answers

1. 3(x² − 4) = 3(x − 2)(x + 2).
2. 5x − 2x = 9 + 3 → 3x = 12 → x = 4.
3. (x − 1)(x − 3) = 0 → x = 1 or x = 3.
4. m = (11 − 3)/(6 − 2) = 8/4 = 2.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('math-plane-geometry', 'Mathematics', 'Plane Geometry', 'Angles, triangles, quadrilaterals, polygons, circles, congruency, similarity, and symmetry.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('4dea5cad-f477-4add-a5ac-ba66324d7893'::uuid, 'math-plane-geometry', 'Mathematics', 'Plane Geometry', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 'published', '# Plane Geometry

Geometry questions reward accurate diagrams and precise reasoning. Draw the figure, label every given length and angle, and quote the property you are using. Most GCE geometry marks come from angle properties, Pythagoras'' theorem, and similarity.

### What you must know

- **Angles:** Angles on a straight line sum to 180°. Angles at a point sum to 360°. Vertically opposite angles are equal. With parallel lines: alternate angles are equal, corresponding angles are equal, and co-interior angles sum to 180°.
- **Triangles:** Interior angles sum to 180°. Types: equilateral (all equal), isosceles (two equal sides, two equal base angles), scalene, right-angled. Pythagoras: in a right triangle, a² + b² = c² where c is the hypotenuse.
- **Quadrilaterals:** Interior angles sum to 360°. A parallelogram has opposite sides parallel and equal; a rectangle has four right angles; a rhombus has four equal sides; a square has four equal sides and right angles; a trapezium has one pair of parallel sides.
- **Polygons:** Sum of interior angles = (n − 2) × 180° for an n-sided polygon. Each exterior angle of a regular polygon = 360°/n. Interior + exterior = 180°.
- **Circles:** A tangent is perpendicular to the radius at the point of contact. The angle in a semicircle is 90°. The angle at the centre is twice the angle at the circumference standing on the same arc.
- **Congruency:** Two shapes are congruent if they are identical in size and shape (SSS, SAS, ASA, RHS).
- **Similarity:** Two shapes are similar if they have the same shape but different size. Corresponding angles are equal and corresponding sides are in the same ratio (scale factor).

### Worked example 1

**Find the interior angle of a regular hexagon.**

Step 1: A hexagon has n = 6 sides. Sum of interior angles = (6 − 2) × 180° = 720°.

Step 2: Regular means all angles equal: 720° ÷ 6 = **120°**.

Each interior angle is 120°.

### Worked example 2

**A ladder 10 m long leans against a wall, with its foot 6 m from the wall. How high up the wall does it reach?**

Step 1: The wall, ground and ladder form a right triangle. Hypotenuse c = 10, one leg b = 6.

Step 2: Pythagoras: a² + 6² = 10² → a² + 36 = 100 → a² = 64.

Step 3: a = √64 = **8 m**.

The ladder reaches 8 m up the wall.

### Worked example 3

**Two similar triangles have a scale factor of 1 : 3. The smaller triangle has a side of 5 cm. Find the corresponding side of the larger triangle.**

Step 1: Scale factor 1 : 3 means the larger side is 3 times the smaller.

Step 2: 5 × 3 = **15 cm**.

The corresponding side is 15 cm.

### Common mistakes to avoid

- Adding interior angles of a polygon as 180° × n instead of (n − 2) × 180°.
- Using Pythagoras on a triangle that is not right-angled.
- Confusing the hypotenuse with a leg when applying a² + b² = c².

### Practice questions

1. Find the exterior angle of a regular octagon.
2. In a right-angled triangle the two shorter sides are 6 cm and 8 cm. Find the hypotenuse.
3. Two angles of a triangle are 55° and 65°. Find the third angle.
4. A rectangle has length 12 cm and diagonal 13 cm. Find its width.

### Answers

1. 360° ÷ 8 = 45°.
2. c = √(6² + 8²) = √100 = 10 cm.
3. 180° − 55° − 65° = 60°.
4. w = √(13² − 12²) = √25 = 5 cm.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('math-trigonometry-ratios', 'Mathematics', 'Trigonometry', 'Trig ratios, sine rule, cosine rule, bearings, heights, and distances.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('9cf0069b-ca71-4c9b-8c58-2ab3b9693c6a'::uuid, 'math-trigonometry-ratios', 'Mathematics', 'Trigonometry', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 'published', '# Trigonometry

Trigonometry turns angles into lengths. The GCE paper tests the three ratios in right triangles, the sine and cosine rules for any triangle, and real-life problems involving bearings, heights, and distances. Always draw a diagram and decide which rule applies before calculating.

### What you must know

- **Trig ratios (right triangle):** sin θ = opposite/hypotenuse, cos θ = adjacent/hypotenuse, tan θ = opposite/adjacent. Remember SOH CAH TOA.
- **Special angles:** sin 30° = 1/2, cos 30° = √3/2, tan 30° = 1/√3; sin 45° = cos 45° = √2/2, tan 45° = 1; sin 60° = √3/2, cos 60° = 1/2, tan 60° = √3.
- **Sine rule (any triangle):** a/sin A = b/sin B = c/sin C. Use it when you know two angles and one side, or two sides and a non-included angle.
- **Cosine rule (any triangle):** a² = b² + c² − 2bc cos A. Use it when you know two sides and the included angle, or all three sides.
- **Bearings:** Measured clockwise from North, written as three digits (e.g., 045°). A bearing of 135° means 135° clockwise from North.
- **Angles of elevation and depression:** The angle of elevation is measured upwards from the horizontal to an object above you; the angle of depression is measured downwards to an object below you. They are alternate angles, so they are equal.

### Worked example 1

**From a point on the ground 30 m from the base of a tree, the angle of elevation of the top of the tree is 40°. Find the height of the tree.**

Step 1: Draw the right triangle. Adjacent = 30 m, angle = 40°, opposite = height h.

Step 2: tan 40° = opposite/adjacent = h/30.

Step 3: h = 30 × tan 40° = 30 × 0.8391 = **25.2 m** (to 1 d.p.).

The tree is about 25.2 m tall.

### Worked example 2

**In triangle ABC, angle A = 40°, angle B = 60°, and side a = 7 cm (opposite A). Find side b.**

Step 1: Use the sine rule: a/sin A = b/sin B.

Step 2: 7/sin 40° = b/sin 60° → b = 7 × sin 60° / sin 40°.

Step 3: b = 7 × 0.8660 / 0.6428 = **9.43 cm** (to 2 d.p.).

Side b is about 9.43 cm.

### Worked example 3

**Two sides of a triangle are 8 cm and 11 cm with an included angle of 50°. Find the third side.**

Step 1: Use the cosine rule: a² = b² + c² − 2bc cos A.

Step 2: a² = 8² + 11² − 2(8)(11) cos 50° = 64 + 121 − 176 × 0.6428.

Step 3: a² = 185 − 113.13 = 71.87 → a = √71.87 = **8.48 cm** (to 2 d.p.).

The third side is about 8.48 cm.

### Common mistakes to avoid

- Using the sine rule when you have two sides and the included angle (use cosine rule).
- Forgetting to convert the calculator to degree mode.
- Measuring a bearing anticlockwise instead of clockwise from North.

### Practice questions

1. In a right triangle, the side opposite a 35° angle is 12 cm. Find the hypotenuse.
2. In triangle ABC, a = 9 cm, b = 12 cm, and angle C = 30°. Find side c.
3. A ship sails 20 km on a bearing of 060°. How far north has it travelled?
4. From the top of a 40 m cliff, the angle of depression of a boat is 25°. Find the horizontal distance of the boat from the cliff.

### Answers

1. sin 35° = 12/h → h = 12/sin 35° = 20.9 cm.
2. c² = 9² + 12² − 2(9)(12) cos 30° = 225 − 187.06 = 37.94 → c = 6.16 cm.
3. North component = 20 cos 60° = 10 km.
4. tan 25° = 40/d → d = 40/tan 25° = 85.8 m.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('math-mensuration', 'Mathematics', 'Mensuration', 'Perimeter, area, volume, and surface area of plane figures and solids.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('2b0f810e-b6e0-4d8e-a6ea-54517cee6425'::uuid, 'math-mensuration', 'Mathematics', 'Mensuration', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 'published', '# Mensuration

Mensuration is the measurement of lengths, areas, and volumes. GCE questions mix plane figures (rectangles, triangles, circles, sectors, trapeziums) with solids (prisms, cylinders, pyramids, cones, spheres). Learn the formulas cold and always state the units in your answer.

### What you must know

- **Perimeter and area of plane figures:**
  - Rectangle: perimeter = 2(l + w), area = l × w.
  - Triangle: area = ½ × base × height.
  - Trapezium: area = ½(a + b) × h, where a and b are the parallel sides.
  - Circle: circumference = 2πr, area = πr².
  - Sector: arc length = (θ/360) × 2πr, area = (θ/360) × πr².
- **Volume and surface area of solids:**
  - Prism: volume = area of cross-section × length.
  - Cylinder: volume = πr²h, curved surface area = 2πrh, total surface area = 2πr² + 2πrh.
  - Pyramid: volume = ⅓ × base area × height.
  - Cone: volume = ⅓πr²h, curved surface area = πrl (l = slant height).
  - Sphere: volume = 4/3 πr³, surface area = 4πr².
- **Units:** 1 m = 100 cm, so 1 m² = 10,000 cm² and 1 m³ = 1,000,000 cm³. 1 litre = 1,000 cm³.

### Worked example 1

**Find the area of a circle of radius 7 cm. (Take π = 22/7.)**

Step 1: Area = πr² = (22/7) × 7².

Step 2: 7² = 49, so area = (22/7) × 49 = 22 × 7.

Step 3: Area = **154 cm²**.

### Worked example 2

**A cylindrical water tank has radius 0.7 m and height 2 m. Find its volume in litres.**

Step 1: Volume = πr²h = (22/7) × 0.7² × 2.

Step 2: 0.7² = 0.49, so volume = (22/7) × 0.49 × 2 = 22 × 0.07 × 2 = 3.08 m³.

Step 3: 1 m³ = 1,000 litres, so volume = 3.08 × 1,000 = **3,080 litres**.

### Worked example 3

**Find the total surface area of a cone with base radius 3 cm and slant height 5 cm. (Take π = 3.14.)**

Step 1: Total surface area = πr² + πrl = πr(r + l).

Step 2: = 3.14 × 3 × (3 + 5) = 3.14 × 3 × 8.

Step 3: = **75.36 cm²**.

### Common mistakes to avoid

- Using diameter instead of radius in circle formulas.
- Forgetting to halve the base × height for a triangle.
- Mixing up curved surface area and total surface area of a cylinder or cone.

### Practice questions

1. Find the area of a trapezium with parallel sides 8 cm and 12 cm and height 5 cm.
2. Find the volume of a sphere of radius 6 cm. (Take π = 3.14.)
3. A rectangular box is 20 cm by 15 cm by 10 cm. Find its volume in litres.
4. Find the area of a sector of radius 10 cm and angle 72°.

### Answers

1. Area = ½(8 + 12) × 5 = 50 cm².
2. Volume = 4/3 × 3.14 × 6³ = 4/3 × 3.14 × 216 = 904.32 cm³.
3. Volume = 20 × 15 × 10 = 3,000 cm³ = 3 litres.
4. Area = (72/360) × 3.14 × 100 = 62.8 cm².
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('math-data-probability', 'Mathematics', 'Statistics and Probability', 'Data representation, averages, dispersion, and probability.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('07c7ec71-358b-422e-8970-a4439ffd4da1'::uuid, 'math-data-probability', 'Mathematics', 'Statistics and Probability', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 'published', '# Statistics and Probability

Statistics and probability test your ability to organize data, summarize it with averages, and reason about chance. GCE questions often use Cameroonian contexts: exam scores, market prices, or class surveys. Show your working for every average and every probability.

### What you must know

- **Data representation:** Frequency tables, bar charts, pictograms, pie charts, and histograms. For a pie chart, each angle = (frequency ÷ total) × 360°.
- **Measures of central tendency:**
  - Mean = sum of values ÷ number of values. For grouped data, mean = Σ(fx) ÷ Σf.
  - Median = the middle value when data is ordered. For n values, it is the (n + 1)/2 th value.
  - Mode = the most frequent value.
- **Measures of dispersion:** Range = largest − smallest. Interquartile range = upper quartile − lower quartile.
- **Probability:** P(event) = number of favourable outcomes ÷ total number of possible outcomes. P(event) is always between 0 and 1. P(not A) = 1 − P(A). For mutually exclusive events, P(A or B) = P(A) + P(B). For independent events, P(A and B) = P(A) × P(B).

### Worked example 1

**The scores of 5 students in a test are 12, 15, 18, 10, 15. Find the mean, median, and mode.**

Step 1: Mean = (12 + 15 + 18 + 10 + 15) ÷ 5 = 70 ÷ 5 = **14**.

Step 2: Order the data: 10, 12, 15, 15, 18. Median = middle value = **15**.

Step 3: Mode = most frequent = **15**.

### Worked example 2

**In a class of 40 students, 25 play football and 20 play basketball. If 10 play both, how many play neither?**

Step 1: Football only = 25 − 10 = 15. Basketball only = 20 − 10 = 10.

Step 2: Total playing at least one = 15 + 10 + 10 = 35.

Step 3: Neither = 40 − 35 = **5 students**.

### Worked example 3

**A bag contains 4 red balls, 3 blue balls, and 3 green balls. One ball is drawn at random. Find the probability that it is red.**

Step 1: Total balls = 4 + 3 + 3 = 10.

Step 2: Favourable outcomes = 4 red balls.

Step 3: P(red) = 4/10 = **2/5**.

### Common mistakes to avoid

- Forgetting to order the data before finding the median.
- Adding probabilities of events that are not mutually exclusive.
- Using the wrong total in a pie chart angle (always the grand total).

### Practice questions

1. Find the mean of 6, 8, 10, 12, 14.
2. A die is rolled once. Find the probability of getting a number greater than 4.
3. In a survey of 60 people, 36 prefer coffee and 24 prefer tea. Find the pie chart angle for coffee.
4. The marks of 7 students are 4, 7, 9, 9, 10, 12, 14. Find the range and the median.

### Answers

1. Mean = 50 ÷ 5 = 10.
2. Numbers greater than 4 are 5 and 6 → P = 2/6 = 1/3.
3. Angle = (36/60) × 360° = 216°.
4. Range = 14 − 4 = 10; median = 9.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('math-sets-matrices', 'Mathematics', 'Sets and Matrices', 'Set notation, Venn diagrams, matrix operations, determinants, and inverses.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('4fafd7d6-fc3e-40b6-bf3c-44194fd6610e'::uuid, 'math-sets-matrices', 'Mathematics', 'Sets and Matrices', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 'published', '# Sets and Matrices

Sets and matrices are compact ways of describing groups of objects and grids of numbers. The GCE paper tests set language with Venn diagrams, and matrix operations including the inverse of a 2 × 2 matrix. Write the set symbols correctly — they carry the marks.

### What you must know

- **Set notation:** ∈ (element of), ∉ (not an element of), ⊆ (subset), ⊂ (proper subset), ∪ (union), ∩ (intersection), A′ or Aᶜ (complement), ∅ (empty set), ξ or U (universal set).
- **Venn diagrams:** Place elements in overlapping regions. For two sets: n(A ∪ B) = n(A) + n(B) − n(A ∩ B).
- **Matrix types:** Row matrix, column matrix, square matrix, identity matrix I = [[1, 0], [0, 1]], zero matrix, equal matrices (same shape, corresponding elements equal).
- **Matrix operations:**
  - Addition/subtraction: add or subtract corresponding elements (same shape only).
  - Scalar multiplication: multiply every element by the scalar.
  - Multiplication: multiply rows of the first by columns of the second; the number of columns of the first must equal the number of rows of the second.
- **Determinant of a 2 × 2 matrix:** For M = [[a, b], [c, d]], det(M) = ad − bc.
- **Inverse of a 2 × 2 matrix:** M⁻¹ = (1/det(M)) × [[d, −b], [−c, a]], valid only when det(M) ≠ 0.

### Worked example 1

**In a class of 40 students, 25 play football, 20 play basketball, and 10 play both. How many play neither?**

Step 1: n(F ∪ B) = n(F) + n(B) − n(F ∩ B) = 25 + 20 − 10 = 35.

Step 2: Neither = 40 − 35 = **5 students**.

### Worked example 2

**Multiply the matrices [[2, 1], [3, 4]] and [[1, 5], [2, 3]].**

Step 1: Row 1 × Column 1 = (2×1) + (1×2) = 4.

Step 2: Row 1 × Column 2 = (2×5) + (1×3) = 13. Row 2 × Column 1 = (3×1) + (4×2) = 11. Row 2 × Column 2 = (3×5) + (4×3) = 27.

Step 3: Result = **[[4, 13], [11, 27]]**.

### Worked example 3

**Find the inverse of the matrix M = [[4, 7], [2, 6]].**

Step 1: Determinant = (4 × 6) − (7 × 2) = 24 − 14 = 10.

Step 2: M⁻¹ = (1/10) × [[6, −7], [−2, 4]].

Step 3: M⁻¹ = **[[0.6, −0.7], [−0.2, 0.4]]**.

### Common mistakes to avoid

- Multiplying matrices in the wrong order (matrix multiplication is not commutative).
- Using the inverse formula with the determinant in the wrong position.
- Forgetting to subtract the intersection twice when using n(A ∪ B).

### Practice questions

1. If A = {1, 2, 3, 4} and B = {3, 4, 5}, find A ∩ B.
2. Add the matrices [[1, 2], [3, 4]] and [[5, 6], [7, 8]].
3. Find the determinant of [[3, 5], [2, 8]].
4. In a group of 50 people, 30 drink tea, 25 drink coffee, and 10 drink both. How many drink neither?

### Answers

1. A ∩ B = {3, 4}.
2. [[6, 8], [10, 12]].
3. (3 × 8) − (5 × 2) = 24 − 10 = 14.
4. 30 + 25 − 10 = 45 drink at least one; neither = 50 − 45 = 5.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('math-vectors-transformations', 'Mathematics', 'Vectors and Transformations', 'Vectors, magnitude, translations, reflections, rotations, and enlargements.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('0c32c47d-f23f-428d-bd1c-caf8fcb86cca'::uuid, 'math-vectors-transformations', 'Mathematics', 'Vectors and Transformations', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'commercial', 'technical']::text[], 'published', '# Vectors and Transformations

Vectors describe movement with direction, and transformations move or resize shapes on the plane. GCE questions ask you to add vectors, find magnitudes, and describe translations, reflections, rotations, and enlargements precisely.

### What you must know

- **Vector notation:** A vector has magnitude and direction. Written as a column [[x], [y]] or as ⃗AB. The magnitude (length) of [[x], [y]] is √(x² + y²).
- **Vector operations:** Add or subtract vectors component by component. Multiply a vector by a scalar to stretch it: 2 × [[3], [4]] = [[6], [8]].
- **Position vectors:** The position vector of a point P is the vector from the origin O to P.
- **Translations:** A translation slides a shape by a vector [[a], [b]] without rotating or resizing it. Every point moves a units right and b units up.
- **Reflections:** A reflection flips a shape over a mirror line. In the x-axis: (x, y) → (x, −y). In the y-axis: (x, y) → (−x, y). In the line y = x: (x, y) → (y, x).
- **Rotations:** A rotation turns a shape about a centre through an angle. 90° anticlockwise about the origin: (x, y) → (−y, x). 180° about the origin: (x, y) → (−x, −y).
- **Enlargements:** An enlargement changes size by a scale factor k about a centre. If k > 1 the shape grows; if 0 < k < 1 it shrinks. Each point moves so that its distance from the centre is multiplied by k.

### Worked example 1

**Find the magnitude of the vector [[3], [4]].**

Step 1: Magnitude = √(3² + 4²).

Step 2: = √(9 + 16) = √25.

Step 3: = **5**.

### Worked example 2

**A point P(2, 3) is translated by the vector [[4], [−1]]. Find the image P′.**

Step 1: Add the vector to the coordinates: x′ = 2 + 4 = 6.

Step 2: y′ = 3 + (−1) = 2.

Step 3: P′ = **(6, 2)**.

### Worked example 3

**Enlarge the point A(1, 2) by a scale factor of 3 with centre at the origin.**

Step 1: Multiply each coordinate by the scale factor.

Step 2: x′ = 1 × 3 = 3, y′ = 2 × 3 = 6.

Step 3: A′ = **(3, 6)**.

### Common mistakes to avoid

- Confusing the image of a reflection in the x-axis with the y-axis.
- Forgetting the centre when describing an enlargement.
- Adding vectors by adding magnitudes instead of components.

### Practice questions

1. Add the vectors [[2], [5]] and [[3], [−2]].
2. Reflect the point (4, 1) in the y-axis.
3. Rotate the point (2, 5) through 90° anticlockwise about the origin.
4. Find the magnitude of the vector [[6], [8]].

### Answers

1. [[5], [3]].
2. (−4, 1).
3. (−5, 2).
4. √(36 + 64) = √100 = 10.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

update public.course_documents
set status = 'archived', updated_at = now()
where topic_id = 'course-math-ordinary' and status = 'published';

commit;

notify pgrst, 'reload schema';
