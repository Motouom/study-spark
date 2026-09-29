# Fiche de révision — Terminale — Suites et nombres complexes

**Niveau :** Terminale — Baccalauréat (séries C, D, E, TI)
**Matière :** Mathématiques

---

## 1. Suites arithmétiques

- Définition : $u_{n+1} = u_n + r$
- Terme général : $u_n = u_0 + nr$
- Somme : $S = (\text{nombre de termes}) \times \frac{\text{premier} + \text{dernier}}{2}$
- $r > 0$ : croissante ; $r < 0$ : décroissante

## 2. Suites géométriques

- Définition : $v_{n+1} = q\,v_n$
- Terme général : $v_n = v_0\, q^n$
- Somme (pour $q \neq 1$) : $S = v_0\, \frac{q^{n+1} - 1}{q - 1}$
- Convergence : $|q| < 1 \Rightarrow \lim v_n = 0$ ; $q > 1 \Rightarrow +\infty$

## 3. Suites récurrentes $u_{n+1} = a u_n + b$

- Point fixe : $\ell = \frac{b}{1-a}$ (pour $a \neq 1$)
- On pose $v_n = u_n - \ell$ ; $(v_n)$ géométrique de raison $a$.

## 4. Théorème de convergence

Suite croissante majorée $\Rightarrow$ converge ; décroissante minorée $\Rightarrow$ converge.
Si $u_{n+1} = f(u_n)$ et $(u_n) \to \ell$ avec $f$ continue, alors $\ell = f(\ell)$.

## 5. Équation du second degré $az^2 + bz + c = 0$

$\Delta = b^2 - 4ac$

- $\Delta > 0$ : $z = \frac{-b \pm \sqrt{\Delta}}{2a}$ (réelles)
- $\Delta = 0$ : $z = -\frac{b}{2a}$ (double)
- $\Delta < 0$ : $z = \frac{-b \pm i\sqrt{-\Delta}}{2a}$ (complexes conjuguées)

## 6. Nombres complexes

- $z = a + bi$, conjugué $\bar z = a - bi$
- Module : $|z| = \sqrt{a^2 + b^2}$, et $z\bar z = |z|^2$
- Argument : $\cos\theta = \frac{a}{|z|}$, $\sin\theta = \frac{b}{|z|}$
- Forme trigonométrique : $z = r(\cos\theta + i\sin\theta) = r e^{i\theta}$
- $|z_1 z_2| = |z_1||z_2|$ ; $\arg(z_1 z_2) = \arg z_1 + \arg z_2$
- $z^n = r^n e^{in\theta}$ (formule de Moivre)

## 7. Valeurs remarquables

- $e^{i\pi} = -1$ ; $e^{i\pi/2} = i$ ; $e^{i\pi/4} = \frac{\sqrt{2}}{2}(1+i)$ ; $e^{i\pi/3} = \frac{1}{2} + i\frac{\sqrt{3}}{2}$

## 8. Conseils pour l'examen

- Compter le nombre exact de termes dans une somme.
- Vérifier $q \neq 1$ avant d'utiliser la formule géométrique.
- Pour une racine complexe, la conjuguée est l'autre racine.
- Bien ordonner module puis argument (module d'abord).
