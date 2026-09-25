# Differentiation

Differentiation measures the rate of change of a function. The A-Level paper tests differentiation of polynomials, stationary points, and applying derivatives to real-world problems.

### What you must know

- **Derivative of $x^n$:** $\frac{d}{dx}(x^n) = nx^{n-1}$.
- **Derivatives of sums/differences:** $\frac{d}{dx}[f(x) \pm g(x)] = f'(x) \pm g'(x)$.
- **Stationary points:** Where $f'(x) = 0$. Determine nature using $f''(x)$ or sign of $f'(x)$.
  - Maximum: $f'(x) = 0$ and $f''(x) < 0$.
  - Minimum: $f'(x) = 0$ and $f''(x) > 0$.
  - Point of inflection: $f'(x) = 0$ and $f''(x) = 0$ (or sign change).
- **Tangents and normals:** Tangent: $y - y_1 = f'(x_1)(x - x_1)$. Normal: perpendicular to tangent, gradient $=-1/f'(x_1)$.
- **Applications:** Rate of change, optimisation problems, equations of tangents/normals.

### Worked example

**Find the derivative of $y = 3x^4 - 5x^2 + 2$.**

Step 1: Differentiate each term: $\frac{d}{dx}(3x^4) = 12x^3$, $\frac{d}{dx}(-5x^2) = -10x$, $\frac{d}{dx}(2) = 0$.

Step 2: $\frac{dy}{dx} = 12x^3 - 10x$.

### Worked example 2

**Find the coordinates and nature of the stationary point of $y = x^3 - 3x^2 + 2$.**

Step 1: Find $f'(x)$: $f'(x) = 3x^2 - 6x = 3x(x - 2)$.

Step 2: Stationary points at $f'(x) = 0 \Rightarrow x = 0$ or $x = 2$.

Step 2: Find $f''(x) = 6x - 6$.

- At $x = 0$: $f''(0) = -6 < 0 \Rightarrow$ maximum. $y = 0^3 - 3(0)^2 + 2 = 2$. Point $(0, 2)$ is a maximum.
- At $x = 2$: $f''(2) = 6 > 0 \Rightarrow$ minimum. $y = 2^3 - 3(2)^2 + 2 = -2$. Point $(2, -2)$ is a minimum.

### Worked example 2

**Find the equation of the tangent to $y = x^2$ at $x = 3$.**

Step 1: $f'(x) = 2x$, so $f'(3) = 6$. Gradient of tangent is $6$.

Step 2: Point is $(3, 9)$. Equation: $y - 9 = 6(x - 3)$.

Step 3: $y = 6x - 9$.

### Common mistakes to avoid

- Forgetting the constant term when differentiating (its derivative is $0$).
- Confusing the nature of stationary points (always use $f''(x)$ or a sign chart).
- Using the wrong formula for tangents/normals (always use $y - y_1 = m(x - x_1)$).

### Practice questions

1. Find the derivative of $y = 4x^3 - 2x + 7$.
2. Find the stationary points of $y = x^2 - 4x + 3$ and their nature.
3. Find the equation of the normal to $y = x^2$ at $x = 1$.
4. The gradient of a curve is given by $\frac{dy}{dx} = 3x^2 - 12x + 9$. Find the stationary points and their nature.

### Answers

1. $\frac{dy}{dx} = 12x^2 - 2$.
2. Stationary points at $x = 0$ and $x = 4$. At $x = 0$, $y'' = -4 < 0 \Rightarrow$ maximum $(0, 3)$. At $x = 4$, $y'' = 12 > 0 \Rightarrow$ minimum $(4, -5)$.
3. At $x = 1$, $y = 1$, $f'(1) = 2$. Normal gradient $= -1/2$. Equation: $y - 1 = -\frac{1}{2}(x - 1)$.
4. $f'(x) = 0 \Rightarrow 3x^2 - 12x + 9 = 0 \Rightarrow x = 1, 3$.
   - At $x = 1$: $f''(1) = 6 - 12 + 9 = 3 > 0 \Rightarrow$ minimum.
   - At $x = 3$: $f''(3) = 27 - 36 + 9 = 0 \Rightarrow$ need further analysis (could be point of inflection).

### Answers (continued)

4. Stationary points at $x = 1$ (minimum) and $x = 3$ (need further analysis).
