-- Enrich the thin A-Level cheatsheets with formula-heavy, topic-based content.
-- These sheets are rendered with markdown + KaTeX, so formulas use $...$ / $$...$$.

update public.course_documents
set markdown_content = $cheat$
# Complex Numbers and Matrices Cheatsheet - A-Level GCE Cameroon

## Complex numbers: forms, modulus and argument

### Core formulas
| Idea | Formula | Exam use |
|---|---|---|
| Cartesian form | $z=a+bi$, $a,b \in \mathbb{R}$ | Separate real and imaginary parts. |
| Conjugate | $\bar z=a-bi$ | Rationalising denominators and proving real results. |
| Modulus | $\lvert z\rvert=\sqrt{a^2+b^2}$ | Distance of $z$ from the origin. |
| Argument | $\arg z=\theta$, $\tan\theta=\frac{b}{a}$ | Always choose the correct quadrant. |
| Product with conjugate | $z\bar z=a^2+b^2=\lvert z\rvert^2$ | Removes $i$ from denominators. |
| Reciprocal | $\frac{1}{z}=\frac{\bar z}{\lvert z\rvert^2}$, $z\ne0$ | Fast simplification. |

### Polar and exponential form
$$
z=r(\cos\theta+i\sin\theta)=r\operatorname{cis}\theta=re^{i\theta}
$$
where
$$
r=|z|,\qquad a=r\cos\theta,\qquad b=r\sin\theta.
$$

### Operations in polar form
$$
z_1z_2=r_1r_2\operatorname{cis}(\theta_1+\theta_2)
$$
$$
\frac{z_1}{z_2}=\frac{r_1}{r_2}\operatorname{cis}(\theta_1-\theta_2),\qquad z_2\ne0
$$

### Exam traps
- If $a<0$ or $b<0$, correct the quadrant before writing $\arg z$.
- Principal argument is usually $-\pi<\arg z\le\pi$ unless the question says otherwise.
- $|z_1+z_2|$ is not usually $|z_1|+|z_2|$.

## De Moivre, powers and roots

### De Moivre
$$
(\cos\theta+i\sin\theta)^n=\cos n\theta+i\sin n\theta
$$
For $z=r\operatorname{cis}\theta$,
$$
z^n=r^n\operatorname{cis}(n\theta).
$$

### Roots of a complex number
If
$$
z=r\operatorname{cis}\theta,
$$
then its $n$ roots are
$$
w_k=r^{1/n}\operatorname{cis}\left(\frac{\theta+2k\pi}{n}\right),\qquad k=0,1,\ldots,n-1.
$$

### Useful expansions
$$
\cos 2\theta=\cos^2\theta-\sin^2\theta=2\cos^2\theta-1=1-2\sin^2\theta
$$
$$
\sin 2\theta=2\sin\theta\cos\theta
$$
$$
\cos 3\theta=4\cos^3\theta-3\cos\theta
$$
$$
\sin 3\theta=3\sin\theta-4\sin^3\theta
$$

### Roots of unity
The $n$ roots of unity satisfy
$$
z^n=1,\qquad z_k=\operatorname{cis}\left(\frac{2k\pi}{n}\right).
$$
They lie equally spaced on the unit circle.

## Loci in the Argand diagram

| Condition | Meaning | Shape |
|---|---|---|
| $\lvert z-a\rvert=r$ | Distance from fixed point $a$ is $r$ | Circle centre $a$, radius $r$ |
| $\lvert z-a\rvert=\lvert z-b\rvert$ | Equidistant from $a$ and $b$ | Perpendicular bisector |
| $\arg(z-a)=\theta$ | Direction from $a$ is fixed | Half-line from $a$ |
| $\arg\left(\frac{z-a}{z-b}\right)=\theta$ | Angle subtended by $a,b$ is fixed | Arc of a circle |
| $\lvert z-a\rvert<r$ | Inside circle | Region |

### Method
1. Write $z=x+iy$.
2. Convert modulus/argument into $x,y$.
3. Simplify to identify circle, line, half-line, or region.
4. Shade only the part allowed by inequalities.

## Matrices: algebra and inverses

### Basic rules
| Operation | Formula |
|---|---|
| Addition | Add corresponding entries. |
| Scalar multiplication | Multiply every entry by the scalar. |
| Product | $(AB)_{ij}=\sum_k a_{ik}b_{kj}$ |
| Transpose | $(A^T)_{ij}=a_{ji}$ |
| Identity | $AI=IA=A$ |

Matrix multiplication is not commutative:
$$
AB\ne BA
$$
unless proved for the specific matrices.

### Determinant and inverse of a $2\times2$ matrix
For
$$
A=\begin{pmatrix}a&b\\c&d\end{pmatrix},
$$
$$
\det A=ad-bc.
$$
If $ad-bc\ne0$,
$$
A^{-1}=\frac{1}{ad-bc}\begin{pmatrix}d&-b\\-c&a\end{pmatrix}.
$$
If $ad-bc=0$, the matrix is singular and has no inverse.

### Solving simultaneous equations
For
$$
AX=B,
$$
if $A^{-1}$ exists,
$$
X=A^{-1}B.
$$

### Determinant facts
$$
\det(AB)=\det A\det B
$$
$$
\det(A^{-1})=\frac{1}{\det A}
$$
$$
\det(A^T)=\det A
$$

## Transformations and eigenvalues

### Common $2D$ matrices
| Transformation | Matrix |
|---|---|
| Reflection in $x$-axis | $\begin{pmatrix}1&0\\0&-1\end{pmatrix}$ |
| Reflection in $y$-axis | $\begin{pmatrix}-1&0\\0&1\end{pmatrix}$ |
| Reflection in $y=x$ | $\begin{pmatrix}0&1\\1&0\end{pmatrix}$ |
| Rotation by $\theta$ anticlockwise | $\begin{pmatrix}\cos\theta&-\sin\theta\\\sin\theta&\cos\theta\end{pmatrix}$ |
| Enlargement scale $k$ about origin | $\begin{pmatrix}k&0\\0&k\end{pmatrix}$ |
| Shear parallel to $x$-axis | $\begin{pmatrix}1&k\\0&1\end{pmatrix}$ |

### Eigenvalues and eigenvectors
Eigenvalues satisfy
$$
\det(A-\lambda I)=0.
$$
For each eigenvalue $\lambda$, eigenvectors satisfy
$$
(A-\lambda I)v=0.
$$
If $A$ has independent eigenvectors,
$$
A=PDP^{-1},
$$
where $D$ contains eigenvalues on the diagonal.

## Series, binomial theorem and induction

### Arithmetic and geometric series
$$
S_n=\frac{n}{2}[2a+(n-1)d]
$$
$$
S_n=\frac{a(1-r^n)}{1-r},\quad r\ne1
$$
$$
S_\infty=\frac{a}{1-r},\quad |r|<1
$$

### Binomial theorem
For positive integer $n$,
$$
(1+x)^n=\sum_{r=0}^{n}{n\choose r}x^r.
$$
For any real $n$,
$$
(1+x)^n=1+nx+\frac{n(n-1)}{2!}x^2+\frac{n(n-1)(n-2)}{3!}x^3+\cdots,\quad |x|<1.
$$

### Mathematical induction
1. Prove the base case, usually $n=1$.
2. Assume true for $n=k$.
3. Prove true for $n=k+1$.
4. Conclude true for all required integers.

## Differentiation and integration quick sheet

### Differentiation
$$
\frac{d}{dx}x^n=nx^{n-1}
$$
$$
\frac{d}{dx}\sin x=\cos x,\quad \frac{d}{dx}\cos x=-\sin x,\quad \frac{d}{dx}\tan x=\sec^2x
$$
$$
\frac{d}{dx}e^x=e^x,\quad \frac{d}{dx}\ln x=\frac1x
$$
$$
\frac{dy}{dx}=\frac{dy/dt}{dx/dt}\quad \text{for parametric equations}
$$

### Integration
$$
\int x^n\,dx=\frac{x^{n+1}}{n+1}+C,\quad n\ne-1
$$
$$
\int \frac1x\,dx=\ln|x|+C
$$
$$
\int e^x\,dx=e^x+C
$$
$$
\int \cos x\,dx=\sin x+C,\quad \int \sin x\,dx=-\cos x+C
$$

### By parts
$$
\int u\frac{dv}{dx}\,dx=uv-\int v\frac{du}{dx}\,dx
$$
Choose $u$ using LIATE: Log, Inverse trig, Algebraic, Trig, Exponential.

## Vectors and mechanics reminders

### Vectors
$$
|a|=\sqrt{a_1^2+a_2^2+a_3^2}
$$
$$
a\cdot b=|a||b|\cos\theta=a_1b_1+a_2b_2+a_3b_3
$$
$$
a\times b=
\begin{vmatrix}
i&j&k\\
a_1&a_2&a_3\\
b_1&b_2&b_3
\end{vmatrix}
$$

### Kinematics
For constant acceleration:
$$
v=u+at,\qquad s=ut+\frac12at^2,\qquad v^2=u^2+2as,\qquad s=\frac12(u+v)t.
$$

### Newton's laws
$$
F=ma,\qquad W=mg,\qquad P=\frac{W}{t}=Fv.
$$

## Final exam checklist

- State domains and restrictions before solving inequalities or logarithms.
- In partial fractions, check repeated and irreducible quadratic factors.
- For matrices, test $\det A\ne0$ before using $A^{-1}$.
- In complex roots, give all roots and space them by $\frac{2\pi}{n}$.
- For loci, describe both the curve and the region or excluded point.
$cheat$
where id = '775b973c-086f-13ff-bc09-2427e86d5013'::uuid
  and content_kind = 'cheatsheet';

update public.course_documents
set markdown_content = $cheat$
# Organic and Physical Chemistry Cheatsheet - A-Level GCE Cameroon

## Amount of substance and concentration

| Quantity | Formula | Notes |
|---|---|---|
| Moles | $n=\frac{m}{M_r}$ | $m$ in grams. |
| Concentration | $c=\frac{n}{V}$ | $V$ in dm$^3$. |
| Dilution | $c_1V_1=c_2V_2$ | Same solute before and after dilution. |
| Gas volume | $n=\frac{V}{V_m}$ | Use stated molar volume. |
| Ideal gas | $pV=nRT$ | $T$ in Kelvin. |
| Percentage yield | $\%Y=\frac{\text{actual}}{\text{theoretical}}\times100$ | Never use excess reagent as theoretical product. |
| Atom economy | $\%AE=\frac{M_r\text{ desired product}}{\sum M_r\text{ reactants}}\times100$ | Green chemistry. |

## Equilibrium and acids

$$
K_c=\frac{[products]^{coefficients}}{[reactants]^{coefficients}}
$$
Solids and pure liquids are omitted from $K_c$.

$$
K_a=\frac{[H^+][A^-]}{[HA]},\qquad pK_a=-\log K_a
$$
$$
pH=-\log[H^+]
$$
For a weak acid approximation:
$$
[H^+]\approx\sqrt{K_a c}
$$
Buffer equation:
$$
pH=pK_a+\log\frac{[A^-]}{[HA]}
$$

## Thermochemistry and kinetics

$$
q=mc\Delta T
$$
$$
\Delta H=\frac{q}{n}
$$
Hess law:
$$
\Delta H_{reaction}=\sum \Delta H_f(products)-\sum \Delta H_f(reactants)
$$
Born-Haber cycles combine atomisation, ionisation, electron affinity, lattice enthalpy and formation enthalpy.

Rate law:
$$
rate=k[A]^m[B]^n
$$
Units of $k$ depend on overall order.

Arrhenius:
$$
k=Ae^{-E_a/RT}
$$

## Redox and electrochemistry

Oxidation number rules:
- Free element: $0$.
- Group 1 metals: $+1$.
- Group 2 metals: $+2$.
- Oxygen usually $-2$.
- Hydrogen usually $+1$.

Cell potential:
$$
E^\circ_{cell}=E^\circ_{cathode}-E^\circ_{anode}
$$
Faraday:
$$
Q=It,\qquad n(e^-)=\frac{Q}{F}
$$
Mass deposited:
$$
m=\frac{ItM}{zF}
$$

## Organic mechanisms and conversions

| Family | Functional group | Key reactions |
|---|---|---|
| Alkene | $C=C$ | Addition with $H_2$, $Br_2$, steam, hydrogen halides. |
| Halogenoalkane | $R-X$ | Nucleophilic substitution, elimination. |
| Alcohol | $R-OH$ | Oxidation, dehydration, esterification. |
| Aldehyde | $R-CHO$ | Oxidised to acid, reduced to alcohol. |
| Ketone | $R-CO-R'$ | Reduced to secondary alcohol. |
| Carboxylic acid | $R-COOH$ | Esterification, salts, acyl derivatives. |
| Ester | $R-COOR'$ | Hydrolysis. |
| Amine | $R-NH_2$ | Basicity, salts, amides. |

### Mechanism signals
- Curly arrow starts from an electron pair.
- Nucleophile donates an electron pair.
- Electrophile accepts an electron pair.
- Major elimination product often follows Zaitsev's rule.

## Exam traps

- Balance redox in acidic/alkaline medium before using mole ratios.
- Convert cm$^3$ to dm$^3$ by dividing by $1000$.
- Use Kelvin in gas and Arrhenius calculations.
- Name organic compounds with longest chain, lowest locants, and correct suffix.
$cheat$
where id = '9630f50f-701f-8826-7aad-6a9581af9d2c'::uuid
  and content_kind = 'cheatsheet';

update public.course_documents
set markdown_content = $cheat$
# Fields, Waves and Electronics Cheatsheet - A-Level GCE Cameroon

## Mechanics, work and power

$$
v=u+at,\qquad s=ut+\frac12at^2,\qquad v^2=u^2+2as
$$
$$
F=ma,\qquad W=mg,\qquad p=\frac{F}{A}
$$
$$
W=Fs\cos\theta,\qquad P=\frac{W}{t}=Fv
$$
$$
E_k=\frac12mv^2,\qquad E_p=mgh
$$

## Waves and optics

$$
v=f\lambda
$$
$$
n=\frac{c}{v}=\frac{\sin i}{\sin r}
$$
Critical angle:
$$
\sin C=\frac{1}{n}
$$
Lens formula:
$$
\frac{1}{f}=\frac{1}{u}+\frac{1}{v}
$$
Magnification:
$$
m=\frac{image\ height}{object\ height}=\frac{v}{u}
$$

## Electricity

$$
Q=It,\qquad V=\frac{W}{Q},\qquad R=\frac{V}{I}
$$
$$
P=IV=I^2R=\frac{V^2}{R}
$$
Series:
$$
R_T=R_1+R_2+\cdots
$$
Parallel:
$$
\frac1{R_T}=\frac1{R_1}+\frac1{R_2}+\cdots
$$

## Fields

Gravitational:
$$
F=\frac{GMm}{r^2},\qquad g=\frac{GM}{r^2}
$$
Electric:
$$
F=\frac{1}{4\pi\varepsilon_0}\frac{Qq}{r^2},\qquad E=\frac{F}{q}
$$
Capacitance:
$$
C=\frac{Q}{V},\qquad E_{cap}=\frac12CV^2
$$

## Magnetism and induction

$$
F=BIL\sin\theta
$$
$$
F=Bqv\sin\theta
$$
Faraday:
$$
\mathcal{E}=-N\frac{d\Phi}{dt}
$$
Transformer:
$$
\frac{V_s}{V_p}=\frac{N_s}{N_p}
$$

## Electronics and radioactivity

Diode conducts mainly in forward bias. Rectification converts AC to pulsating DC.

Half-life:
$$
N=N_0\left(\frac12\right)^{t/T_{1/2}}
$$
Activity:
$$
A=\lambda N,\qquad T_{1/2}=\frac{\ln2}{\lambda}
$$

## Exam traps

- Draw direction of fields and forces clearly.
- Use SI units before substitution.
- In lens questions, keep sign convention consistent.
- In induction, Lenz's law explains the minus sign.
$cheat$
where id = 'e6ef7aa2-bad0-0b83-3e23-ed02cfa37164'::uuid
  and content_kind = 'cheatsheet';

update public.course_documents
set markdown_content = $cheat$
# Probability and Statistics Cheatsheet - A-Level GCE Cameroon

## Counting and probability

$$
n!=n(n-1)(n-2)\cdots1
$$
$$
{}^nP_r=\frac{n!}{(n-r)!},\qquad {}^nC_r=\frac{n!}{r!(n-r)!}
$$
$$
P(A')=1-P(A)
$$
$$
P(A\cup B)=P(A)+P(B)-P(A\cap B)
$$
Conditional probability:
$$
P(A|B)=\frac{P(A\cap B)}{P(B)}
$$
Independence:
$$
P(A\cap B)=P(A)P(B)
$$

## Discrete distributions

Expected value:
$$
E(X)=\sum xp(x)
$$
Variance:
$$
Var(X)=E(X^2)-[E(X)]^2
$$

Binomial:
$$
X\sim B(n,p),\qquad P(X=r)={n\choose r}p^r(1-p)^{n-r}
$$
$$
E(X)=np,\qquad Var(X)=np(1-p)
$$

Poisson:
$$
X\sim Po(\lambda),\qquad P(X=r)=\frac{e^{-\lambda}\lambda^r}{r!}
$$
$$
E(X)=Var(X)=\lambda
$$

## Normal distribution

$$
X\sim N(\mu,\sigma^2)
$$
Standardise:
$$
Z=\frac{X-\mu}{\sigma}
$$
Continuity correction:
- $P(X\le r)$ becomes $P(X<r+0.5)$.
- $P(X\ge r)$ becomes $P(X>r-0.5)$.

## Correlation and regression

Product moment correlation:
$$
r=\frac{S_{xy}}{\sqrt{S_{xx}S_{yy}}}
$$
Regression of $y$ on $x$:
$$
y=a+bx,\qquad b=\frac{S_{xy}}{S_{xx}},\qquad a=\bar y-b\bar x
$$

## Hypothesis testing

1. State $H_0$ and $H_1$.
2. Choose test statistic and significance level.
3. Find critical region or p-value.
4. Compare.
5. Write conclusion in context.

## Exam traps

- Use combinations when order does not matter.
- Use permutations when order matters.
- Do not claim causation from correlation.
- Include context in final hypothesis test conclusion.
$cheat$
where id = 'e57ae952-091b-8f26-cfdb-93994a865524'::uuid
  and content_kind = 'cheatsheet';
