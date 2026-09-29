# Terminale — Mathématiques Appliquées — L'analyse

**Niveau :** Terminale — Baccalauréat
**Séries :** ACC / CG / FIG / SES
**Matière :** Mathématiques Appliquées

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

- Calculer des limites de fonctions (polynômes, fractions rationnelles, $\ln$, $e^x$) aux bornes du domaine ;
- Calculer des dérivées à l'aide des formules usuelles et des fonctions composées ;
- Étudier le sens de variation d'une fonction et dresser son tableau de variations ;
- Déterminer l'équation d'une tangente en un point ;
- Calculer des primitives et des intégrales, interpréter l'intégrale comme une aire ;
- Appliquer ces outils à l'optimisation économique (bénéfice, coût, recette).

---

## 1. Les limites

### 1.1 Limites usuelles

- $\displaystyle \lim_{x \to +\infty} x^n = +\infty$ ; $\displaystyle \lim_{x \to -\infty} x^n$ dépend de la parité de $n$.
- $\displaystyle \lim_{x \to +\infty} \frac{1}{x} = 0$ ; $\displaystyle \lim_{x \to +\infty} e^x = +\infty$ ; $\displaystyle \lim_{x \to -\infty} e^x = 0$.
- $\displaystyle \lim_{x \to +\infty} \ln x = +\infty$ ; $\displaystyle \lim_{x \to 0^+} \ln x = -\infty$.
- Limites de référence : $\displaystyle \lim_{x \to +\infty} \frac{\ln x}{x} = 0$ ; $\displaystyle \lim_{x \to 0^+} x \ln x = 0$ ; $\displaystyle \lim_{x \to +\infty} \frac{e^x}{x} = +\infty$.

### 1.2 Fraction rationnelle à l'infini

Pour une fraction de polynômes, on factorise par le terme de plus haut degré.

**Exemple :** $\displaystyle \lim_{x\to +\infty} \frac{2x^2 + 3x - 1}{x^2 + 1}$.
En divisant numérateur et dénominateur par $x^2$ :
$$\frac{2 + \frac{3}{x} - \frac{1}{x^2}}{1 + \frac{1}{x^2}} \longrightarrow \frac{2 + 0 - 0}{1 + 0} = 2.$$
La limite est **2** : les degrés étant égaux, la limite est le rapport des coefficients dominants.

**Règle pratique :** si le degré du numérateur est supérieur à celui du dénominateur, la limite est $\pm\infty$ ; s'il est inférieur, la limite est 0 ; s'ils sont égaux, c'est le rapport des coefficients de plus haut degré.

---

## 2. La dérivation

### 2.1 Dérivées usuelles

| Fonction        | Dérivée               |
| --------------- | --------------------- |
| $x^n$           | $n x^{n-1}$           |
| $k$ (constante) | $0$                   |
| $\frac{1}{x}$   | $-\frac{1}{x^2}$      |
| $\sqrt{x}$      | $\frac{1}{2\sqrt{x}}$ |
| $e^x$           | $e^x$                 |
| $e^{u}$         | $u' e^{u}$            |
| $\ln x$         | $\frac{1}{x}$         |
| $\ln u$         | $\frac{u'}{u}$        |

### 2.2 Opérations

- $(u + v)' = u' + v'$ ; $(k u)' = k u'$ ; $(uv)' = u'v + uv'$.
- $\left(\frac{u}{v}\right)' = \frac{u'v - uv'}{v^2}$.
- Dérivée de $x \mapsto x^n$ où $n$ entier relatif.

**Exemple :** Dériver $f(x) = \frac{x}{x+1}$.
$$f'(x) = \frac{1 \cdot (x+1) - x \cdot 1}{(x+1)^2} = \frac{x+1 - x}{(x+1)^2} = \frac{1}{(x+1)^2}.$$

**Exemple :** Dériver $g(x) = \ln(2x+1)$.
$$g'(x) = \frac{2}{2x+1}.$$

**Exemple :** Dériver $h(x) = e^{2x}$.
$$h'(x) = 2e^{2x}.$$

### 2.3 Sens de variation et extrema

- Si $f'(x) \geq 0$ sur un intervalle, $f$ est croissante ; si $f'(x) \leq 0$, $f$ est décroissante.
- Un extremum (maximum ou minimum) est atteint là où $f'$ s'annule en changeant de signe.

**Exemple complet :** Soit $f(x) = x^3 - 3x + 2$.

1. $f'(x) = 3x^2 - 3 = 3(x-1)(x+1)$.
2. $f' \geq 0$ sur $]-\infty, -1] \cup [1, +\infty[$ ; $f' \leq 0$ sur $[-1, 1]$.
3. Maximum local : $f(-1) = -1 + 3 + 2 = 4$ ; minimum local : $f(1) = 1 - 3 + 2 = 0$.
4. Tableau de variations : $f$ croît de $-\infty$ à $-1$, décroît de $-1$ à $1$, puis croît de $1$ à $+\infty$.

### 2.4 Tangente

L'équation de la tangente à la courbe de $f$ au point d'abscisse $a$ est :
$$y = f(a) + f'(a)(x - a).$$

**Exemple :** Tangente à $f(x) = x^2$ en $a = 1$.
$f(1) = 1$ et $f'(x) = 2x$ donc $f'(1) = 2$ ; $y = 1 + 2(x-1) = 2x - 1$.

---

## 3. L'intégration

### 3.1 Primitives usuelles

| Fonction            | Primitive                 |
| ------------------- | ------------------------- | --- | ---- |
| $x^n$ ($n \neq -1$) | $\frac{x^{n+1}}{n+1} + C$ |
| $\frac{1}{x}$       | $\ln                      | x   | + C$ |
| $e^x$               | $e^x + C$                 |
| $e^{u}$             | $\frac{e^u}{u'} + C$      |
| $\cos x$            | $\sin x + C$              |
| $\sin x$            | $-\cos x + C$             |

### 3.2 Intégrale définie

$$\int_a^b f(x)\, dx = F(b) - F(a), \quad \text{où } F \text{ est une primitive de } f.$$

**Exemple :** Calculer $\int_0^1 (3x^2 + 2x)\, dx$.
Une primitive est $x^3 + x^2$. En $1$ : $1 + 1 = 2$ ; en $0$ : $0$. Donc $\int_0^1 = 2$.

### 3.3 Intégrale et aire

Si $f \geq 0$ sur $[a,b]$, alors $\int_a^b f(x)\,dx$ représente l'aire (en unités d'aire) du domaine compris entre la courbe, l'axe des abscisses et les droites $x=a$ et $x=b$.

**Exemple :** Aire sous $f(x) = \frac{1}{x}$ entre 1 et $e$.
$$\int_1^e \frac{1}{x}\,dx = [\ln x]_1^e = \ln e - \ln 1 = 1.$$

---

## 4. Applications économiques de l'analyse

- **Coût marginal** : $C_m(x) = C'(x)$ (dérivée du coût total).
- **Recette marginale** : $R_m(x) = R'(x)$.
- **Bénéfice** : $B(x) = R(x) - C(x)$ ; le bénéfice est maximal quand $B'(x) = 0$, c'est-à-dire quand $R'(x) = C'(x)$ (recette marginale = coût marginal).
- **Optimisation** : maximiser un profit ou une aire, minimiser un coût, revient à étudier une fonction et son extremum.

**Exemple :** Bénéfice $B(x) = -x^2 + 60x - 500$.
$B'(x) = -2x + 60$ ; $B' = 0 \Leftrightarrow x = 30$ ; $B(30) = -900 + 1800 - 500 = 400$. Le bénéfice maximal est 400, atteint pour 30 unités.

---

## 5. Erreurs à éviter

- Oublier de préciser l'ensemble de définition avant de dériver.
- Confondre $\ln(uv)$ et $(\ln u) \times (\ln v)$.
- Utiliser la règle de la fraction sans vérifier que $v \neq 0$.
- Oublier la constante $C$ dans une primitive.
- Confondre primitive et dérivée.
- Ne pas vérifier qu'un point où $f' = 0$ est bien un extremum (changement de signe).

## 6. Exercices d'entraînement

**Exercice 1 :** Étudier les variations de $f(x) = x^3 - 3x^2 - 9x + 5$ et préciser les extrema.
**Exercice 2 :** Calculer $\lim_{x\to+\infty} \frac{3x^2 - 2x + 1}{x^2 + 5}$.
**Exercice 3 :** Calculer $\int_1^2 (2x + 3)\,dx$.
**Exercice 4 :** Déterminer l'équation de la tangente à $f(x) = \ln x$ en $a = 1$.
**Exercice 5 :** Le coût total d'une entreprise est $C(x) = 0,5x^2 + 10x + 200$ et la recette $R(x) = 40x$. Déterminer le bénéfice maximal.
