# Fiche de révision — Terminale — Analyse (limites, dérivées, intégrales)

**Niveau :** Terminale — Baccalauréat (séries C, D, E, TI)
**Matière :** Mathématiques

---

## 1. Limites à connaître par cœur

- $\lim\limits_{x \to +\infty} x^n = +\infty$ ; $\lim\limits_{x \to -\infty} x^n = \pm\infty$ (selon la parité de $n$)
- $\lim\limits_{x \to +\infty} \frac{1}{x} = 0$ ; $\lim\limits_{x \to +\infty} e^x = +\infty$ ; $\lim\limits_{x \to -\infty} e^x = 0$
- $\lim\limits_{x \to +\infty} \ln x = +\infty$ ; $\lim\limits_{x \to 0^+} \ln x = -\infty$
- $\lim\limits_{x \to 0} \frac{\sin x}{x} = 1$ ; $\lim\limits_{x \to 0} \frac{e^x - 1}{x} = 1$

## 2. Croissances comparées

- En $+\infty$ : $e^x$ domine toute puissance ; toute puissance domine $\ln x$.
- $\frac{e^x}{x} \to +\infty$ ; $\frac{\ln x}{x} \to 0$ ; $x e^{-x} \to 0$

## 3. Dérivées usuelles

| $f(x)$     | $f'(x)$               |
| ---------- | --------------------- |
| $x^n$      | $n x^{n-1}$           |
| $e^x$      | $e^x$                 |
| $\ln x$    | $\frac{1}{x}$         |
| $\sin x$   | $\cos x$              |
| $\cos x$   | $-\sin x$             |
| $\tan x$   | $\frac{1}{\cos^2 x}$  |
| $\sqrt{x}$ | $\frac{1}{2\sqrt{x}}$ |

## 4. Opérations

- Produit : $(uv)' = u'v + uv'$
- Quotient : $\left(\frac{u}{v}\right)' = \frac{u'v - uv'}{v^2}$
- Composées : $(u^n)' = n u'u^{n-1}$ ; $(e^u)' = u'e^u$ ; $(\ln u)' = \frac{u'}{u}$

## 5. Primitives usuelles

| $f(x)$        | primitive $F(x)$      |
| ------------- | --------------------- |
| $x^n$         | $\frac{x^{n+1}}{n+1}$ |
| $e^x$         | $e^x$                 |
| $\frac{1}{x}$ | $\ln\|x\|$            |
| $\cos x$      | $\sin x$              |
| $\sin x$      | $-\cos x$             |

## 6. Intégrale et aire

$$\int_a^b f(x)\,dx = F(b) - F(a) \quad \text{; aire} = \int_a^b f(x)\,dx$$

Intégration par parties : $\int u\,v' = [uv] - \int u'v$

## 7. Asymptotes

- Verticale $x = a$ si $\lim_{x\to a} f = \pm\infty$
- Horizontale $y = \ell$ si $\lim_{x\to\pm\infty} f = \ell$
- Oblique $y = ax+b$ si $f(x) = ax + b + \frac{r}{g}$ avec $\lim \frac{r}{g} = 0$

## 8. Conseils pour l'examen

- Toujours préciser le domaine de définition avant de dériver.
- Signe de $f'$ $\Rightarrow$ variations ; zéro avec changement de signe $\Rightarrow$ extremum.
- Vérifier chaque résultat numérique avec un calcul mental.
- Encadrer les réponses finales.
