# Fiche — Terminale — Mathématiques Appliquées — Suites et algèbre

**Niveau :** Terminale — Baccalauréat
**Séries :** ACC / CG / FIG / SES
**Matière :** Mathématiques Appliquées

---

# Fiche de révision — Suites et algèbre

## 1. Suites arithmétiques

- Définition : $u_{n+1} = u_n + r$
- Terme général : $u_n = u_0 + n r$
- Somme : $S_n = u_0 + u_1 + \dots + u_{n-1} = n \times \frac{u_0 + u_{n-1}}{2}$
- $r > 0$ : croissante et tend vers $+\infty$ ; $r < 0$ : décroissante.

## 2. Suites géométriques

- Définition : $v_{n+1} = q v_n$
- Terme général : $v_n = v_0 q^n$
- Somme ($q \neq 1$) : $S_n = v_0 \times \frac{1 - q^n}{1 - q}$
- Limite : si $|q| < 1$, $q^n \to 0$ ; si $q > 1$, $q^n \to +\infty$.

## 3. Suites récurrentes $u_{n+1} = a u_n + b$

- Point fixe : $\ell = \frac{b}{1-a}$ (si $a \neq 1$).
- $(u_n - \ell)$ est géométrique de raison $a$.
- $u_n = \ell + (u_0 - \ell) a^n$.

## 4. Équation du second degré $ax^2 + bx + c = 0$

- Discriminant : $\Delta = b^2 - 4ac$
- $\Delta > 0$ : deux solutions $x = \frac{-b \pm \sqrt{\Delta}}{2a}$
- $\Delta = 0$ : une solution double $x = -\frac{b}{2a}$
- $\Delta < 0$ : aucune solution réelle
- Signe : du signe de $a$ hors des racines, signe contraire entre les racines.
- Factorisation : $ax^2 + bx + c = a(x-x_1)(x-x_2)$.

## 5. Degrés supérieurs et bicarrées

- Factoriser par une racine évidente : $P(x) = (x-a)Q(x)$.
- Bicarrée : poser $X = x^2$, résoudre en $X$, puis $x = \pm\sqrt{X}$.

## 6. Systèmes linéaires

- Substitution : isoler une inconnue, remplacer.
- Combinaison : multiplier pour éliminer une inconnue.
- Interprétation : droites sécantes (solution unique), parallèles (aucune), confondues (infinité).

## 7. Applications financières (suites)

- Valeur acquise (composés) : $V_n = C(1+i)^n$ (suite géométrique de raison $1+i$).
- Amortissement dégressif : $V_n = V_0 (1 - t)^n$.
- Croissance à taux constant : $u_n = u_0 (1 + t)^n$.

## 8. Réflexes à l'épreuve

1. Identifier le type de suite (arithmétique ou géométrique) dès l'énoncé.
2. Ne jamais utiliser la formule de somme géométrique avec $q = 1$.
3. Vérifier le signe de $a$ pour les tableaux de signe.
4. Bien poser les inconnues dans les problèmes concrets.
5. Vérifier la solution d'un système en la remplaçant.
