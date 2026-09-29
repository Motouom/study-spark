# BAC — Physique — Ondes, optique et physique moderne (Terminale C/D/E/TI)

**Niveau :** Terminale — Baccalauréat
**Séries :** C / D / E / TI
**Matière :** Physique

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

- Caractériser une onde (longueur d'onde, fréquence, période, célérité) et la distinguer selon sa nature ;
- Appliquer la relation fondamentale des ondes et la loi de Snell-Descartes ;
- Expliquer la diffraction, les interférences et la dispersion de la lumière ;
- Utiliser les relations des lentilles minces (Descartes) pour déterminer images et grandissements ;
- Appliquer les concepts de la physique moderne : effet photoélectrique, énergie du photon, radioactivité, fission et fusion.

---

## PARTIE A — LES ONDES

### 1. Caractéristiques d'une onde

Une onde est la propagation d'une perturbation sans transport de matière, mais avec transport d'énergie.

Relation fondamentale :
$$v = \lambda f = \frac{\lambda}{T}$$

- $v$ : célérité (m/s) ; $\lambda$ : longueur d'onde (m) ; $f$ : fréquence (Hz) ; $T$ : période (s).
- La fréquence ne change pas quand l'onde change de milieu ; la célérité et la longueur d'onde changent.

**Exemple :** Onde sonore de fréquence 440 Hz, $\lambda = 0,75$ m : $v = 0,75\times440 = 330 \text{ m/s}$.

### 2. Types d'ondes

- **Onde mécanique :** nécessite un milieu (son, corde, vagues).
- **Onde électromagnétique :** se propage dans le vide à la célérité $c = 3\times10^8 \text{ m/s}$ (lumière, ondes radio, rayons X).
- **Longitudinale :** vibration parallèle à la propagation (son) ; **transversale :** vibration perpendiculaire (corde, lumière).

### 3. La diffraction

La diffraction est le changement de direction de l'onde au voisinage d'un obstacle ou d'une fente. Elle est notable lorsque la dimension $a$ de l'obstacle est de l'ordre de la longueur d'onde.

Demi-largeur angulaire de la tache centrale :
$$\theta = \frac{\lambda}{a}$$

Largeur de la tache centrale sur un écran à la distance $D$ : $\ell = 2\theta D$.

### 4. Les interférences

Deux ondes cohérentes se superposent :

- **Interférence constructive** (brillant) : différence de marche $\delta = k\lambda$ ;
- **Interférence destructive** (sombre) : $\delta = (2k+1)\frac{\lambda}{2}$.

**Fentes d'Young** : l'interfrange vaut
$$i = \frac{\lambda D}{a}$$
où $a$ est la distance entre les fentes et $D$ la distance fentes-écran.

**Exemple :** $\lambda = 600$ nm, $a = 1$ mm, $D = 1$ m :
$$i = \frac{600\times10^{-9}\times1}{10^{-3}} = 6\times10^{-4} \text{ m} = 0,6 \text{ mm}.$$

---

## PARTIE B — L'OPTIQUE GÉOMÉTRIQUE

### 5. Les lois de la réfraction (Snell-Descartes)

Au passage d'un milieu d'indice $n_1$ à un milieu d'indice $n_2$ :
$$n_1\sin i = n_2\sin r$$

- Indice : $n = \frac{c}{v}$.
- **Réflexion totale** du milieu 2 vers le milieu 1 quand $i > i_c$ avec $\sin i_c = \frac{n_2}{n_1}$.
- **Dispersion** : l'indice dépend de la longueur d'onde ; le violet est plus dévié que le rouge (ex. arc-en-ciel).

**Exemple :** verre ($n = 1,5$), incidence 40° :
$$\sin r = \frac{\sin 40°}{1,5} = \frac{0,643}{1,5} = 0,429 \Rightarrow r = 25,4°.$$

### 6. Les lentilles minces convergentes

**Relation de Descartes :**
$$\frac{1}{\overline{OA'}} - \frac{1}{\overline{OA}} = \frac{1}{f'}$$

**Grandissement :** $\gamma = \frac{\overline{OA'}}{\overline{OA}} = \frac{\overline{A'B'}}{\overline{AB}}$.

- $\overline{OA'} > 0$ : image réelle ; $\overline{OA'} < 0$ : image virtuelle.
- $\gamma < 0$ : image renversée ; $\gamma > 0$ : droite.

**Vergence :** $V = \frac{1}{f'}$ (dioptrie, $\delta$).

**Exemple :** $f' = 10$ cm, objet à 30 cm :
$$\frac{1}{\overline{OA'}} = \frac{1}{10} - \frac{1}{30} = \frac{2}{30} \Rightarrow \overline{OA'} = 15 \text{ cm}, \quad \gamma = \frac{15}{-30} = -0,5.$$
Image réelle, renversée, deux fois plus petite.

---

## PARTIE C — LA PHYSIQUE MODERNE

### 7. L'énergie du photon (quantum de lumière)

Einstein : la lumière est constituée de photons d'énergie
$$E = h\nu = h\frac{c}{\lambda}$$
avec $h = 6,6\times10^{-34} \text{ J}\cdot\text{s}$ (constante de Planck).

**Exemple :** $\lambda = 600$ nm :
$$E = \frac{6,6\times10^{-34}\times3\times10^8}{600\times10^{-9}} = 3,3\times10^{-19} \text{ J}.$$

### 8. L'effet photoélectrique

L'émission d'électrons par un métal éclairé ne se produit que si l'énergie du photon dépasse le travail d'extraction $W_0$ :
$$E_c = h\nu - W_0$$

- Fréquence seuil : $f_0 = \frac{W_0}{h}$.
- L'effet photoélectrique prouve la **nature corpusculaire** de la lumière.

**Exemple :** $W_0 = 2 \text{ eV} = 3,2\times10^{-19}$ J, photon $f = 1,2\times10^{15}$ Hz :
$$E_c = 6,6\times10^{-34}\times1,2\times10^{15} - 3,2\times10^{-19} = 4,72\times10^{-19} \text{ J} \approx 2,95 \text{ eV}.$$

### 9. La radioactivité

La loi de décroissance radioactive :
$$N(t) = N_0 e^{-\lambda t}$$

- $\lambda$ : constante radioactive ; demi-vie $T = \frac{\ln 2}{\lambda}$.
- Activité : $A = \lambda N$ (becquerel, Bq).

**Les trois types de rayonnement :**

| Type      | Nature                                       | Pouvoir pénétrant               |
| --------- | -------------------------------------------- | ------------------------------- |
| $\alpha$  | noyau d'hélium $\phantom{}_{2}^{4}\text{He}$ | faible (arrêté par une feuille) |
| $\beta^-$ | électron + antineutrino                      | moyen (quelques mm d'aluminium) |
| $\gamma$  | onde électromagnétique                       | élevé (plomb, béton)            |

**Équation type :** $\phantom{}_{Z}^{A}\text{X} \rightarrow \phantom{}_{Z-2}^{A-4}\text{Y} + \phantom{}_{2}^{4}\text{He}$ ($\alpha$) ; $\phantom{}_{Z}^{A}\text{X} \rightarrow \phantom{}_{Z+1}^{A}\text{Y} + \phantom{}_{-1}^{0}e + \bar{\nu}$ ($\beta^-$).

**Exemple :** demi-vie $T = 20$ jours, après 60 jours ($3T$) : reste $\left(\frac{1}{2}\right)^3 = \frac{1}{8}$ des noyaux.

### 10. Fission et fusion — équivalence masse-énergie

Einstein : $E = \Delta m c^2$. Avec $1 \text{ u} = 931,5 \text{ MeV/c}^2$ :

- **Fission** : un noyau lourd se fragmente en noyaux plus légers (uranium 235 + neutron). Libère une grande énergie.
- **Fusion** : deux noyaux légers s'unissent (deutérium + tritium → hélium + neutron). C'est la source d'énergie du Soleil.

**Exemple de fission :**
$$\phantom{}_{92}^{235}\text{U} + \phantom{}_{0}^{1}n \rightarrow \phantom{}_{54}^{139}\text{Xe} + \phantom{}_{38}^{94}\text{Sr} + 3\phantom{}_{0}^{1}n$$
Conservation de $A$ : $235+1 = 139+94+3 = 236$ ✓ ; de $Z$ : $92 = 54+38$ ✓.
Si $\Delta m = 0,2$ u : $E = 0,2\times931,5 = 186,3 \text{ MeV}$.

---

## 11. Erreurs à éviter

- Oublier que la fréquence est invariante au changement de milieu.
- Confondre diffraction (ouverture) et réfraction (changement de milieu).
- Utiliser les distances non algébriques dans la relation de Descartes.
- Oublier le signe négatif de $\overline{OA}$ pour un objet réel.
- Confondre l'énergie du photon en eV et en joules (1 eV = $1,6\times10^{-19}$ J).
- Oublier l'antineutrino dans la désintégration $\beta^-$.

---

## 12. Exercices d'entraînement

**Exercice 1 :** Une onde de fréquence 40 kHz a une longueur d'onde de 8,5 mm. Calculer la célérité.

**Exercice 2 :** Un photon a une énergie de 2 eV. Calculer sa fréquence et sa longueur d'onde.

**Exercice 3 :** Un objet de 2 cm est placé à 30 cm d'une lentille convergente de 10 cm. Calculer la position, le grandissement et la taille de l'image.

**Exercice 4 :** Un échantillon a une demi-vie de 24 jours et une activité initiale de $10^{12}$ Bq. Calculer l'activité après 48 jours et le nombre initial de noyaux.

**Exercice 5 :** Calculer l'énergie libérée par la fusion du deutérium et du tritium si $\Delta m = 0,0188$ u.
