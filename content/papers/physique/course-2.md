# BAC — Physique — L'électricité et le magnétisme (Terminale C/D/E/TI)

**Niveau :** Terminale — Baccalauréat
**Séries :** C / D / E / TI
**Matière :** Physique

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

- Appliquer la loi d'Ohm, les lois de Kirchhoff et le théorème de Thévenin ;
- Calculer les résistances et capacités équivalentes de groupements en série et en parallèle ;
- Étudier les régimes transitoires des circuits RC et RL (constante de temps) ;
- Analyser les oscillations libres et forcées d'un circuit RLC (résonance) ;
- Calculer les champs et forces magnétiques (force de Lorentz, force de Laplace) ;
- Expliquer l'induction électromagnétique et le fonctionnement du transformateur.

---

## 1. Notions fondamentales du courant électrique

L'intensité du courant est le débit de charge :
$$I = \frac{\Delta Q}{\Delta t} \qquad (\text{ampère, A})$$

La tension $U$ (volt) est la différence de potentiel entre deux points. Le générateur de f.é.m. $E$ et de résistance interne $r$ obéit à :
$$U_{PN} = E - rI$$

**Bilan de puissance d'un générateur :** $P_{tot} = EI$, $P_{perdue} = rI^2$, $P_{utile} = UI$.

---

## 2. La loi d'Ohm et les lois de Kirchhoff

### 2.1. Loi d'Ohm

Pour un conducteur ohmique : $U = RI$.

### 2.2. Lois de Kirchhoff

- **Loi des nœuds :** la somme des courants qui entrent dans un nœud égale la somme de ceux qui en sortent : $\sum I_{entrant} = \sum I_{sortant}$.
- **Loi des mailles :** la somme algébrique des tensions le long d'une maille fermée est nulle : $\sum U = 0$.

### 2.3. Les groupements de résistances

- **En série :** $R_{eq} = R_1 + R_2 + \dots$ (même courant, tensions s'ajoutent).
- **En parallèle :** $\frac{1}{R_{eq}} = \frac{1}{R_1} + \frac{1}{R_2} + \dots$ (même tension).

**Exemple :** $R_1 = 20$, $R_2 = 30$, $R_3 = 60 \ \Omega$ en parallèle :
$$\frac{1}{R_{eq}} = \frac{1}{20}+\frac{1}{30}+\frac{1}{60} = \frac{3+2+1}{60} = \frac{6}{60} \Rightarrow R_{eq} = 10 \ \Omega.$$

---

## 3. Le condensateur et les circuits RC

### 3.1. Le condensateur

Un condensateur de capacité $C$ (farad) soumis à une tension $U$ accumule une charge :
$$Q = CU$$

Énergie emmagasinée : $E = \frac{1}{2}CU^2 = \frac{1}{2}QU$.

Groupements :

- **Série :** $\frac{1}{C_{eq}} = \frac{1}{C_1} + \frac{1}{C_2}$
- **Parallèle :** $C_{eq} = C_1 + C_2$

### 3.2. Charge d'un condensateur dans un circuit RC

Constante de temps : $\tau = RC$ (s). L'équation différentielle et sa solution :

$$u_C(t) = E\left(1 - e^{-t/\tau}\right)$$

- Au bout de $\tau$, $u_C = 0,63E$ ;
- Au bout de $5\tau$, le condensateur est pratiquement chargé.

**Décharge :** $u_C(t) = U_0 e^{-t/\tau}$.

---

## 4. La bobine et les circuits RL

### 4.1. La bobine

Une bobine d'inductance $L$ (henry) et de résistance $r$ obéit à :
$$u_L = r i + L\frac{di}{dt}$$

Le terme $L\frac{di}{dt}$ est la force électromotrice d'auto-induction. Elle s'oppose aux variations du courant (loi de Lenz).

### 4.2. Établissement du courant dans un circuit RL

$$\tau = \frac{L}{R}, \qquad i(t) = \frac{E}{R}\left(1 - e^{-t/\tau}\right)$$

Le courant tend vers $I_0 = \frac{E}{R}$ (régime permanent). Au bout de $\tau$, $i = 0,63I_0$.

---

## 5. Les oscillations dans un circuit RLC

### 5.1. Circuit LC idéal (oscillations libres non amorties)

Pulsation propre :
$$\omega_0 = \frac{1}{\sqrt{LC}}$$

Fréquence propre : $f_0 = \frac{\omega_0}{2\pi}$. L'énergie s'échange périodiquement entre le condensateur (énergie électrique) et la bobine (énergie magnétique).

### 5.2. Circuit RLC série (régime sinusoïdal forcé)

Impédances :

- Résistance : $Z_R = R$ ;
- Bobine : $Z_L = L\omega$ ;
- Condensateur : $Z_C = \frac{1}{C\omega}$.

**Résonance d'intensité :** elle se produit quand $\omega = \omega_0 = \frac{1}{\sqrt{LC}}$. À la résonance, $Z = R$ (minimale) et le courant est maximal.

**Exemple :** $L = 0,1 \text{ H}$, $C = 10 \ \mu\text{F}$ :
$$\omega_0 = \frac{1}{\sqrt{0,1\times10\times10^{-6}}} = 1000 \text{ rad/s}, \quad f_0 \approx 159 \text{ Hz}.$$

---

## 6. Le champ magnétique

### 6.1. Champ créé par un solénoïde

À l'intérieur d'un long solénoïde (N spires, longueur $l$, courant $I$) :
$$B = \mu_0 \frac{N}{l} I, \qquad \mu_0 = 4\pi\times10^{-7} \text{ SI}$$

Le champ est uniforme, parallèle à l'axe, son sens est donné par la règle de la main droite.

### 6.2. Force de Lorentz

Une charge $q$ animée d'une vitesse $\vec{v}$ dans un champ $\vec{B}$ subit :
$$\vec{F} = q\vec{v}\wedge\vec{B}, \qquad F = qvB\sin\theta$$

- La force est perpendiculaire à la vitesse : elle ne travaille pas (elle modifie la direction, pas la valeur de la vitesse).
- Dans un champ uniforme perpendiculaire, la trajectoire est un cercle de rayon $R = \frac{mv}{qB}$.

### 6.3. Force de Laplace

Un conducteur de longueur $l$ parcouru par un courant $I$ dans un champ $\vec{B}$ subit :
$$\vec{F} = I\vec{l}\wedge\vec{B}, \qquad F = BIl\sin\theta$$

- Si conducteur perpendiculaire : $F = BIl$ ;
- Si parallèle : $F = 0$.

---

## 7. L'induction électromagnétique

Lorsqu'un circuit voit varier le flux magnétique $\Phi$ qui le traverse, une f.é.m. induite apparaît (loi de Faraday) :
$$e = -\frac{d\Phi}{dt}$$

Pour une tige de longueur $l$ se déplaçant à la vitesse $v$ perpendiculairement à $\vec{B}$ : $e = Blv$.

**Applications :** alternateurs, dynamos, transformateurs, plaques à induction, microphones.

---

## 8. Le transformateur parfait

$$\frac{U_2}{U_1} = \frac{N_2}{N_1}, \qquad U_1I_1 = U_2I_2 \text{ (parfait)}$$

- Si $N_2 > N_1$ : élévateur ; si $N_2 < N_1$ : abaisseur.

**Exemple :** Transformateur 230 V → 23 V, $N_1 = 1150$ spires :
$$N_2 = 1150\times\frac{23}{230} = 115 \text{ spires}.$$

---

## 9. Exemple rédigé (type Bac)

**Enoncé :** Un générateur ($E = 12 \text{ V}$, $r = 2 \ \Omega$) alimente $R = 10 \ \Omega$.

**Solution :**

1. $I = \frac{E}{R+r} = \frac{12}{12} = 1 \text{ A}$.
2. $U = E - rI = 12 - 2 = 10 \text{ V}$.
3. $P = UI = 10 \text{ W}$.

---

## 10. Erreurs à éviter

- Confondre groupements série et parallèle (tension ou courant commun).
- Oublier le signe de la force de Lorentz (charge négative).
- Confondre la fréquence et la pulsation ($\omega = 2\pi f$).
- Oublier la résistance interne du générateur.
- Ne pas convertir les unités ($\mu\text{F}$, $\text{mH}$...).

---

## 11. Exercices d'entraînement

**Exercice 1 :** Trois résistances 10, 20, 30 $\Omega$ en série sous 60 V. Calculer le courant et les tensions.

**Exercice 2 :** Un condensateur 8 $\mu$F est chargé sous 250 V. Calculer la charge et l'énergie.

**Exercice 3 :** Dans un circuit RC ($R = 1000 \ \Omega$, $C = 20 \ \mu\text{F}$), calculer $\tau$ et la tension après $2\tau$ pour $E = 5$ V.

**Exercice 4 :** Un électron ($q = 1,6\times10^{-19}$ C, $m = 9,1\times10^{-31}$ kg) pénètre à $10^6$ m/s dans un champ $B = 0,5$ T. Calculer le rayon de sa trajectoire.

**Exercice 5 :** Un circuit RLC série ($R = 20 \ \Omega$, $L = 0,1$ H, $C = 10 \ \mu\text{F}$) est alimenté par une tension efficace 10 V. Calculer $f_0$ et le courant à la résonance.
