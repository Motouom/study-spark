# Sets and Matrices

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
