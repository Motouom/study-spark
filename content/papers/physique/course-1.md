# BAC — Physique — La mécanique (Terminale C/D/E/TI)

**Niveau :** Terminale — Baccalauréat
**Séries :** C / D / E / TI
**Matière :** Physique

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

- Énoncer et appliquer le principe fondamental de la dynamique (PFD) dans des situations concrètes ;
- Distinguer les différents types de mouvements (rectiligne, circulaire, uniforme, varié) et décrire leurs caractéristiques ;
- Appliquer les théorèmes de l'énergie cinétique et de l'énergie mécanique ;
- Analyser un mouvement de projectile, un mouvement circulaire et un mouvement oscillatoire (ressort, pendule) ;
- Résoudre des problèmes de mécanique au Bac en rédigeant clairement les étapes du raisonnement.

---

## 1. Rappels de cinématique

### 1.1. Position, vitesse et accélération

Dans un référentiel donné, la position d'un mobile est repérée par son vecteur position $\vec{OM}(t)$. La vitesse moyenne est :

$$v_{moy} = \frac{\Delta d}{\Delta t}$$

La vitesse instantanée est la dérivée de la position, et l'accélération est la dérivée de la vitesse :

$$\vec{v} = \frac{d\vec{OM}}{dt}, \qquad \vec{a} = \frac{d\vec{v}}{dt}$$

### 1.2. Mouvement rectiligne uniforme (MRU)

La trajectoire est une droite et la vitesse est constante : $a = 0$.
$$x(t) = x_0 + vt$$

### 1.3. Mouvement rectiligne uniformément varié (MRUV)

L'accélération est constante. Les équations horaires sont :

$$v(t) = v_0 + at, \qquad x(t) = x_0 + v_0 t + \frac{1}{2}at^2$$

**Relation indépendante du temps :**
$$v^2 = v_0^2 + 2a(x - x_0)$$

**Exemple :** Une voiture démarre du repos et atteint $72 \text{ km/h}$ en 10 s.

- $v = 72/3,6 = 20 \text{ m/s}$ ; $a = \frac{20}{10} = 2 \text{ m/s}^2$ ; $x = \frac{1}{2}\times2\times10^2 = 100 \text{ m}$.

---

## 2. Les forces et le principe fondamental de la dynamique

### 2.1. Les forces usuelles

| Force                     | Expression           | Caractéristiques                                     |
| ------------------------- | -------------------- | ---------------------------------------------------- |
| Poids                     | $\vec{P} = m\vec{g}$ | Vertical, vers le bas, appliqué au centre de gravité |
| Réaction normale          | $\vec{R}_N$          | Perpendiculaire au support                           |
| Tension                   | $\vec{T}$            | Le long du fil                                       |
| Force de rappel (ressort) | $F = kx$             | Opposée à l'allongement                              |
| Frottement                | $f = \mu R_N$        | Opposée au mouvement                                 |
| Force électrique          | $F = qE$             | Selon le champ (si $q > 0$)                          |

### 2.2. Le principe fondamental de la dynamique (2e loi de Newton)

Dans un référentiel galiléen, la somme des forces appliquées est égale au produit de la masse par l'accélération :

$$\sum \vec{F}_{ext} = m\vec{a}$$

**Méthode de résolution :**

1. Définir le système et le référentiel (galiléen).
2. Faire le bilan des forces.
3. Choisir un axe et projeter.
4. Appliquer le PFD et résoudre.

**Exemple :** Un ascenseur de 500 kg monte avec $a = 2 \text{ m/s}^2$. La tension du câble :
$$T - mg = ma \Rightarrow T = m(g + a) = 500\times12 = 6\,000 \text{ N}.$$

---

## 3. L'énergie : travail, énergie cinétique, énergie potentielle

### 3.1. Le travail d'une force

Pour une force constante $\vec{F}$ appliquée sur un déplacement rectiligne $\vec{d}$ :

$$W = \vec{F}\cdot\vec{d} = Fd\cos\theta$$

- $W > 0$ : force motrice ; $W < 0$ : force résistante ; $W = 0$ : force perpendiculaire.
- Le travail du poids entre deux altitudes $z_1$ et $z_2$ : $W(P) = mg(z_1 - z_2)$ (indépendant du chemin).

**Unité :** le joule (J).

### 3.2. Le théorème de l'énergie cinétique

La variation d'énergie cinétique d'un système entre deux positions est égale au travail total des forces appliquées :

$$\Delta E_c = \sum W(\vec{F}_{ext}), \qquad E_c = \frac{1}{2}mv^2$$

### 3.3. Les énergies potentielles

- Énergie potentielle de pesanteur : $E_{pp} = mgz$ (référence au sol).
- Énergie potentielle élastique : $E_{pe} = \frac{1}{2}kx^2$.

### 3.4. L'énergie mécanique et sa conservation

$$E_m = E_c + E_p$$

Si seules des forces conservatives travaillent, l'énergie mécanique se conserve :
$$\Delta E_m = 0 \Rightarrow E_{m,1} = E_{m,2}$$

Si des frottements travaillent : $\Delta E_m = W(f)$ (négatif).

**Exemple :** Une balle de 200 g lâchée de 20 m.

- $v = \sqrt{2gh} = \sqrt{2\times10\times20} = 20 \text{ m/s}$ juste avant le sol.

---

## 4. Les mouvements particuliers

### 4.1. La chute libre verticale

Un corps en chute libre (seul le poids agit) tombe avec une accélération $g$ :
$$v = \sqrt{2gh}, \qquad h = \frac{1}{2}gt^2$$

### 4.2. Le mouvement de projectile (chute parabolique)

Lancé horizontalement à la vitesse $v_0$ depuis une hauteur $h$, le projectile a :

- Horizontalement : mouvement uniforme $x = v_0t$ ;
- Verticalement : chute libre $y = \frac{1}{2}gt^2$.

Durée de chute : $t = \sqrt{\frac{2h}{g}}$ ; portée : $d = v_0\sqrt{\frac{2h}{g}}$.

### 4.3. Le mouvement circulaire uniforme (MCU)

La vitesse est constante en valeur, la trajectoire est un cercle.

$$T = \frac{2\pi R}{v}, \qquad a_n = \frac{v^2}{R}, \qquad F = m\frac{v^2}{R}$$

L'accélération est centripète (vers le centre). La force centripète est fournie par la gravitation (satellites), la tension (pendule) ou le frottement (virage).

### 4.4. La gravitation

Deux masses ponctuelles s'attirent avec la force :
$$F = G\frac{m_1m_2}{d^2}, \qquad G = 6,67\times10^{-11} \text{ SI}$$

Champ gravitationnel terrestre : $g = G\frac{M_T}{(R_T + h)^2}$.
Vitesse de satellisation : $v = \sqrt{\frac{GM_T}{r}}$.

---

## 5. Les oscillations mécaniques

### 5.1. Le pendule simple

Période des petites oscillations :
$$T = 2\pi\sqrt{\frac{l}{g}}$$

Elle dépend de la longueur et de $g$, mais pas de la masse ni de l'amplitude (isochronisme).

### 5.2. L'oscillateur élastique (ressort)

Pulsation et période :
$$\omega_0 = \sqrt{\frac{k}{m}}, \qquad T = 2\pi\sqrt{\frac{m}{k}}$$

---

## 6. La quantité de mouvement et les collisions

$$\vec{p} = m\vec{v}$$

Dans un système isolé (pas de force extérieure), la quantité de mouvement totale se conserve :
$$\vec{p}_{avant} = \vec{p}_{après}$$

**Choc parfaitement inélastique :** les corps restent collés, vitesse commune
$$v = \frac{m_1v_1 + m_2v_2}{m_1 + m_2}.$$

---

## 7. Exemple rédigé (type Bac)

**Enoncé :** Un projectile de 100 g est lancé verticalement vers le haut à $v_0 = 40 \text{ m/s}$. Déterminer la hauteur maximale et la vitesse à 40 m.

**Solution :**

1. Conservation de l'énergie mécanique (seul le poids travaille) :
   $$\frac{1}{2}mv_0^2 = mgh_{max} \Rightarrow h_{max} = \frac{v_0^2}{2g} = \frac{1600}{20} = 80 \text{ m}.$$
2. À $h' = 40 \text{ m}$ : $\frac{1}{2}mv_0^2 = \frac{1}{2}mv^2 + mgh'$
   $$\frac{1}{2}mv^2 = 80 - 0,1\times10\times40 = 40 \Rightarrow v^2 = 800 \Rightarrow v \approx 28,3 \text{ m/s}.$$

---

## 8. Erreurs à éviter

- Oublier de convertir les unités (km/h en m/s).
- Oublier le signe du travail (négatif si force résistante).
- Appliquer la conservation de l'énergie alors que des frottements existent.
- Confondre vitesse et accélération dans le MCU (la vitesse reste constante mais l'accélération n'est pas nulle).
- Ne pas préciser le référentiel.

---

## 9. Exercices d'entraînement

**Exercice 1 :** Une voiture de 1200 kg démarre du repos avec une accélération de 2 m/s². Calculer la force motrice et la distance parcourue en 10 s.

**Exercice 2 :** Une bille de 50 g décrit un MCU de rayon 0,8 m à la vitesse 4 m/s. Calculer la période et la force centripète.

**Exercice 3 :** Un pendule de 1 m est écarté de 30°. Calculer la hauteur et la vitesse au passage à la verticale.

**Exercice 4 :** Deux mobiles de masses 1 kg et 2 kg (vitesses 6 m/s et -3 m/s) entrent en collision inélastique. Calculer la vitesse commune.

**Exercice 5 :** Un satellite orbite à 200 km d'altitude. Calculer la vitesse de satellisation ($M_T = 6\times10^{24}$ kg, $R_T = 6400$ km).
