# Integration

Integration is the reverse process of differentiation. The A-Level paper tests indefinite integration, definite integration, area under curves, and applications.

### What you must know

- **Indefinite integration:** $\int f(x)\,dx = F(x) + C$, where $F'(x) = f(x)$ and $C$ is the arbitrary constant.
- **Standard integrals:** $\int x^n\,dx = \frac{x^{n+1}}{n+1} + C$ ($n \neq -1$), $\int \sin x\,dx = -\cos x + C$, $\int \cos x\,dx = \sin x + C$, $\int \frac{1}{x}\,dx = \ln|x| + C$.
- **Definite integral:** $\int_a^b f(x)\,dx = [F(x)]_a^b = F(b) - F(a)$.
- **Area under a curve:** The definite integral $\int_a^b y\,dx$ gives the area between the curve $y = f(x)$ and the $x$-axis from $x = a$ to $x = b$.
- **Area between two curves:** $\int_a^b |f(x) - g(x)|\,dx$.

### Worked example

**Evaluate $\int_0^2 (3x^2 - 4x + 1)\,dx$.**

Step 1: Find the indefinite integral: $\int (3x^2 - 4x + 1)\,dx = x^3 - 2x^2 + x + C$.

Step 2: Apply the limits: $[x^3 - 2x^2 + x]_0^2 = (8 - 8 + 2) - (0 - 0 + 0) = 2$.

Step 2: Value of the definite integral is $2$.

### Worked example 2

**Find the area between $y = x^2$ and $y = x$ from $x = 0$ to $x = 1$.**

Step 1: The area is $\int_0^1 (x - x^2)\,dx$ (since $x \geq x^2$ on $[0, 1]$).

Step 2: $\int_0^1 (x - x^2)\,dx = \left[\frac{x^2}{2} - \frac{x^3}{3}\right]_0^1 = \left(\frac{1}{2} - \frac{1}{3}\right) - 0 = \frac{1}{6}$.

Step 2: Area is $\frac{1}{6}$.

### Common mistakes to avoid

- Forgetting the constant $C$ in indefinite integration.
- Forgetting to subtract the lower limit value in definite integrals.
- Forgetting to take the absolute value when finding area between curves (ensure $f(x) \geq g(x)$ on the interval).

### Practice questions

1. Evaluate $\int_0^3 (2x + 1)\,dx$.
2. Evaluate $\int_0^{\pi} \sin x\,dx$.
3. Evaluate $\int_1^4 (3x^2 - 2x + 1)\,dx$.
4. Find the area between $y = x^2$ and $y = 4$ from $x = -2$ to $x = 2$.

### Answers

1. $\left[x^2 + x\right]_0^3 = (9 + 3) - 0 = 12$.
2. $[-\cos x]_0^{\pi} = -\cos\pi - (-\cos 0) = -(-1) - (-1) = 2$.
3. $\left[x^3 - x^2 + x\right]_1^4 = (64 - 8 + 4) - (1 - 2 + 1) = 59 - 0 = 59$.
4. Area $= \int_{-2}^2 (4 - x^2)\,dx = \left[4x - \frac{x^3}{3}\right]_{-2}^2 = \left(8 - \frac{8}{3}\right) - \left(-8 + \frac{8}{3}\right) = \frac{16}{3} - \left(-\frac{16}{3}\right) = \frac{32}{3}$.
