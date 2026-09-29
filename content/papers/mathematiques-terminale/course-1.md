# Terminale — Mathématiques — Cours 1 : L'Analyse

**Niveau :** Terminale — Baccalauréat (séries C, D, E, TI)
**Matière :** Mathématiques
**Thème :** Limites, dérivation et intégration

---

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

1. Calculer des limites de fonctions (formes indéterminées, limites usuelles).
2. Déterminer les asymptotes verticales, horizontales et obliques.
3. Calculer des dérivées (fonctions usuelles et composées) et les utiliser pour étudier les variations.
4. Calculer des primitives et des intégrales définies, y compris par intégration par parties.
5. Interpréter une intégrale comme une aire et résoudre des problèmes d'aire.

---

## 1. Les limites de fonctions

### 1.1 Limites usuelles

- $\lim\limits_{x \to +\infty} x^n = +\infty$ pour $n \ge 1$ et $\lim\limits_{x \to -\infty} x^n = \begin{cases} +\infty \text{ si } n \text{ pair} \\ -\infty \text{ si } n \text{ impair} \end{cases}$
- $\lim\limits_{x \to +\infty} \frac{1}{x^n} = 0$ pour $n \ge 1$
- $\lim\limits_{x \to +\infty} e^x = +\infty$, $\lim\limits_{x \to -\infty} e^x = 0$
- $\lim\limits_{x \to +\infty} \ln(x) = +\infty$, $\lim\limits_{x \to 0^+} \ln(x) = -\infty$
- Limites remarquables : $\lim\limits_{x \to 0} \frac{\sin(x)}{x} = 1$ et $\lim\limits_{x \to 0} \frac{e^x - 1}{x} = 1$

### 1.2 Croissances comparées

En $+\infty$, l'exponentielle l'emporte sur toute puissance, et toute puissance l'emporte sur le logarithme :

$$\lim_{x \to +\infty} \frac{e^x}{x} = +\infty, \qquad \lim_{x \to +\infty} \frac{\ln(x)}{x} = 0, \qquad \lim_{x \to +\infty} x e^{-x} = 0$$

### 1.3 Formes indéterminées

Les formes $0 \times \infty$, $\frac{\infty}{\infty}$, $\frac{0}{0}$ et $\infty - \infty$ nécessitent une transformation :

- Pour les polynômes : mettre le terme de plus haut degré en facteur.
- Pour les fractions rationnelles : diviser numérateur et dénominateur par $x^n$ (plus haut degré).
- Pour les fonctions avec $\sqrt{}$ : multiplier par l'expression conjuguée.

**Exemple 1 :** Calculer $\lim\limits_{x \to +\infty} \frac{2x^2 + 3x - 1}{x^2 + 1}$.

_Solution :_ On divise par $x^2$ :
$$\lim_{x \to +\infty} \frac{2 + \frac{3}{x} - \frac{1}{x^2}}{1 + \frac{1}{x^2}} = \frac{2 + 0 - 0}{1 + 0} = 2$$

**Exemple 2 :** Calculer $\lim\limits_{x \to +\infty} (\sqrt{x^2 + 1} - x)$.

_Solution :_ On multiplie par l'expression conjuguée :
$$\sqrt{x^2+1} - x = \frac{(\sqrt{x^2+1} - x)(\sqrt{x^2+1} + x)}{\sqrt{x^2+1} + x} = \frac{1}{\sqrt{x^2+1} + x} \to 0$$

### 1.4 Asymptotes

- **Verticale** : si $\lim\limits_{x \to a} f(x) = \pm\infty$, la droite $x = a$ est une asymptote verticale.
- **Horizontale** : si $\lim\limits_{x \to \pm\infty} f(x) = \ell$, la droite $y = \ell$ est une asymptote horizontale.
- **Oblique** : si $f(x) = ax + b + \frac{r(x)}{g(x)}$ avec $\lim \frac{r}{g} = 0$, la droite $y = ax + b$ est une asymptote oblique.

**Exemple 3 :** Montrer que $y = x + 1$ est une asymptote oblique à $f(x) = \frac{x^2 + 1}{x - 1}$.

_Solution :_ On effectue la division euclidienne :
$$\frac{x^2 + 1}{x - 1} = x + 1 + \frac{2}{x - 1}$$
Comme $\lim\limits_{x \to \pm\infty} \frac{2}{x-1} = 0$, la droite $y = x + 1$ est asymptote oblique.

---

## 2. La dérivation

### 2.1 Dérivées des fonctions usuelles

| Fonction   | Dérivée               |
| ---------- | --------------------- |
| $x^n$      | $n x^{n-1}$           |
| $e^x$      | $e^x$                 |
| $\ln(x)$   | $\frac{1}{x}$         |
| $\sin(x)$  | $\cos(x)$             |
| $\cos(x)$  | $-\sin(x)$            |
| $\tan(x)$  | $\frac{1}{\cos^2(x)}$ |
| $\sqrt{x}$ | $\frac{1}{2\sqrt{x}}$ |

### 2.2 Opérations sur les dérivées

- $(u + v)' = u' + v'$
- $(ku)' = k u'$
- $(uv)' = u'v + uv'$
- $\left(\frac{u}{v}\right)' = \frac{u'v - uv'}{v^2}$
- $(u^n)' = n u' u^{n-1}$
- $(e^u)' = u' e^u$
- $(\ln u)' = \frac{u'}{u}$

**Exemple 4 :** Dériver $g(x) = x\,e^{x}$.

_Solution :_ C'est un produit $u = x$, $v = e^{x}$ :
$$g'(x) = 1 \cdot e^{x} + x \cdot e^{x} = e^{x}(x + 1)$$

**Exemple 5 :** Dériver $h(x) = \frac{2x + 1}{x - 3}$.

_Solution :_ $u = 2x+1$, $v = x-3$, $u' = 2$, $v' = 1$ :
$$h'(x) = \frac{2(x-3) - (2x+1)(1)}{(x-3)^2} = \frac{2x - 6 - 2x - 1}{(x-3)^2} = \frac{-7}{(x-3)^2}$$

### 2.3 Utilisation pour les variations

Le signe de $f'(x)$ donne le sens de variation de $f$ :

- $f'(x) > 0 \Rightarrow f$ strictement croissante ;
- $f'(x) < 0 \Rightarrow f$ strictement décroissante ;
- $f'(x) = 0$ en $x_0$ avec changement de signe $\Rightarrow$ extremum local.

**Exemple 6 :** Étudier les variations de $f(x) = x^3 - 3x + 2$.

_Solution :_ $f'(x) = 3x^2 - 3 = 3(x-1)(x+1)$.

| $x$     | $-\infty$ | $-1$       | $1$ | $+\infty$  |
| ------- | --------- | ---------- | --- | ---------- | --- | ---------- | --- |
| $f'(x)$ |           | $+$        | $0$ | $-$        | $0$ | $+$        |     |
| $f(x)$  |           | $\nearrow$ | $4$ | $\searrow$ | $0$ | $\nearrow$ |     |

$f(-1) = -1 + 3 + 2 = 4$ (maximum local), $f(1) = 1 - 3 + 2 = 0$ (minimum local).

---

## 3. L'intégration

### 3.1 Primitives usuelles

| Fonction      | Primitive             |
| ------------- | --------------------- | --- | --- |
| $x^n$         | $\frac{x^{n+1}}{n+1}$ |
| $e^x$         | $e^x$                 |
| $\frac{1}{x}$ | $\ln                  | x   | $   |
| $\cos(x)$     | $\sin(x)$             |
| $\sin(x)$     | $-\cos(x)$            |

### 3.2 Intégrale définie

Si $F$ est une primitive de $f$, alors :
$$\int_a^b f(x)\, dx = F(b) - F(a)$$

**Exemple 7 :** Calculer $\displaystyle\int_0^1 (3x^2 + 2x)\, dx$.

_Solution :_ Une primitive est $F(x) = x^3 + x^2$. Donc :
$$\int_0^1 (3x^2 + 2x)\, dx = F(1) - F(0) = (1 + 1) - 0 = 2$$

**Exemple 8 :** Calculer $\displaystyle\int_1^2 \frac{1}{x}\, dx$.

_Solution :_ Une primitive est $\ln(x)$ :
$$\int_1^2 \frac{1}{x}\, dx = \ln(2) - \ln(1) = \ln(2)$$

### 3.3 Intégration par parties

$$\int_a^b u\,v' = \left[u\,v\right]_a^b - \int_a^b u'\,v$$

**Exemple 9 :** Calculer $\displaystyle\int_0^1 x\,e^{x}\, dx$.

_Solution :_ On pose $u = x$ (donc $u' = 1$) et $v' = e^{x}$ (donc $v = e^{x}$) :
$$\int_0^1 x e^{x}\, dx = \left[x e^{x}\right]_0^1 - \int_0^1 1 \cdot e^{x}\, dx = (e - 0) - \left[e^{x}\right]_0^1 = e - (e - 1) = 1$$

### 3.4 Aire sous la courbe

L'aire du domaine délimité par la courbe de $f$ (avec $f \ge 0$), l'axe des abscisses et les droites $x = a$, $x = b$ est :
$$\mathcal{A} = \int_a^b f(x)\, dx \quad \text{(en unités d'aire)}$$

---

## 4. Erreurs à éviter

- Oublier les limites remarquables et les croissances comparées.
- Confondre $e^u$ et $u^n$ lors de la dérivation.
- Oublier la constante $+C$ dans une primitive.
- Oublier de vérifier le signe de $f'$ avant de conclure sur les variations.
- Négliger les conditions de définition (domaine de $\ln$, $\sqrt{}$, $\frac{1}{x}$).

---

## 5. Exercices d'entraînement

**Exercice 1 :** Calculer $\lim\limits_{x \to +\infty} \frac{3x^3 + x}{x^3 + 2}$.

**Exercice 2 :** Calculer $\lim\limits_{x \to 0} \frac{\sin(3x)}{x}$.

**Exercice 3 :** Étudier les variations de $f(x) = x^2 e^{-x}$ et déterminer son maximum.

**Exercice 4 :** Calculer $\displaystyle\int_0^1 (4x^3 - 2x + 1)\, dx$.

**Exercice 5 :** Calculer $\displaystyle\int_0^1 \ln(x + 1)\, dx$.
