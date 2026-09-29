# Terminale — Mathématiques — Cours 2 : Les Suites et l'Algèbre

**Niveau :** Terminale — Baccalauréat (séries C, D, E, TI)
**Matière :** Mathématiques
**Thème :** Suites numériques, équations et nombres complexes

---

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

1. Reconnaître et exploiter les suites arithmétiques et géométriques.
2. Calculer les sommes des premiers termes de ces suites.
3. Étudier la convergence d'une suite et calculer sa limite.
4. Résoudre des équations du second degré (dans $\mathbb{R}$ et dans $\mathbb{C}$).
5. Manipuler les nombres complexes : forme algébrique, module, argument.

---

## 1. Les suites arithmétiques

Une suite $(u_n)$ est **arithmétique** s'il existe un réel $r$ (la raison) tel que :
$$u_{n+1} = u_n + r$$

### 1.1 Terme général

$$u_n = u_0 + nr \quad \text{ou} \quad u_n = u_p + (n-p)r$$

### 1.2 Somme des premiers termes

$$S_n = u_0 + u_1 + \cdots + u_n = (n+1) \times \frac{u_0 + u_n}{2}$$

Plus généralement, la somme de $k$ termes consécutifs vaut $k \times \frac{\text{premier + dernier}}{2}$.

**Exemple 1 :** Soit la suite arithmétique de premier terme $u_0 = 5$ et de raison $r = 3$. Calculer $u_{10}$ et la somme $S = u_0 + \cdots + u_{10}$.

_Solution :_ $u_{10} = 5 + 10 \times 3 = 35$. La somme comporte 11 termes :
$$S = 11 \times \frac{5 + 35}{2} = 11 \times 20 = 220$$

### 1.3 Sens de variation

- $r > 0 \Rightarrow (u_n)$ croissante ;
- $r < 0 \Rightarrow (u_n)$ décroissante ;
- $r = 0 \Rightarrow (u_n)$ constante.

---

## 2. Les suites géométriques

Une suite $(v_n)$ est **géométrique** s'il existe un réel $q$ (la raison) tel que :
$$v_{n+1} = q\, v_n$$

### 2.1 Terme général

$$v_n = v_0 \, q^{n} \quad \text{ou} \quad v_n = v_p \, q^{n-p}$$

### 2.2 Somme des premiers termes

Pour $q \neq 1$ :
$$S_n = v_0 + v_1 + \cdots + v_n = v_0 \, \frac{q^{n+1} - 1}{q - 1}$$

**Exemple 2 :** Soit la suite géométrique de premier terme $v_0 = 3$ et de raison $q = 2$. Calculer $v_5$ et la somme $v_0 + \cdots + v_9$.

_Solution :_ $v_5 = 3 \times 2^5 = 3 \times 32 = 96$. La somme comporte 10 termes :
$$S = 3 \times \frac{2^{10} - 1}{2 - 1} = 3 \times (1024 - 1) = 3 \times 1023 = 3069$$

### 2.3 Convergence

- $|q| < 1 \Rightarrow \lim v_n = 0$ ;
- $q = 1 \Rightarrow (v_n)$ constante ;
- $q > 1$ et $v_0 > 0 \Rightarrow \lim v_n = +\infty$ ;
- $q \le -1 \Rightarrow$ pas de limite.

---

## 3. Suites définies par récurrence et convergence

### 3.1 Suites de la forme $u_{n+1} = a u_n + b$

On introduit la suite auxiliaire $v_n = u_n - \ell$, où $\ell$ est le point fixe défini par $\ell = a\ell + b$, c'est-à-dire $\ell = \frac{b}{1 - a}$ (pour $a \neq 1$). Alors $(v_n)$ est géométrique de raison $a$.

**Exemple 3 :** Soit $(u_n)$ définie par $u_0 = 2$ et $u_{n+1} = 3u_n - 1$. Déterminer $u_n$.

_Solution :_ Point fixe : $\ell = 3\ell - 1 \Rightarrow -2\ell = -1 \Rightarrow \ell = \frac{1}{2}$.
On pose $v_n = u_n - \frac{1}{2}$. Alors $v_{n+1} = u_{n+1} - \frac{1}{2} = 3u_n - 1 - \frac{1}{2} = 3u_n - \frac{3}{2} = 3\left(u_n - \frac{1}{2}\right) = 3v_n$.
$(v_n)$ est géométrique de raison 3 et de premier terme $v_0 = 2 - \frac{1}{2} = \frac{3}{2}$.
$$v_n = \frac{3}{2} \times 3^n = \frac{3^{n+1}}{2} \quad \Rightarrow \quad u_n = \frac{3^{n+1}}{2} + \frac{1}{2}$$

### 3.2 Théorème de convergence

Toute suite croissante et majorée converge ; toute suite décroissante et minorée converge. Si $(u_n)$ converge vers $\ell$ et $u_{n+1} = f(u_n)$ avec $f$ continue, alors $\ell = f(\ell)$.

---

## 4. Les équations du second degré dans $\mathbb{C}$

### 4.1 Discriminant

Pour $az^2 + bz + c = 0$, le discriminant est $\Delta = b^2 - 4ac$.

- Si $\Delta > 0$ : deux solutions réelles $z = \frac{-b \pm \sqrt{\Delta}}{2a}$.
- Si $\Delta = 0$ : une solution double $z = -\frac{b}{2a}$.
- Si $\Delta < 0$ : deux solutions complexes conjuguées $z = \frac{-b \pm i\sqrt{-\Delta}}{2a}$.

**Exemple 4 :** Résoudre dans $\mathbb{C}$ : $z^2 - 4z + 13 = 0$.

_Solution :_ $\Delta = 16 - 52 = -36 < 0$. $\sqrt{-\Delta} = \sqrt{36} = 6$.
$$z = \frac{4 \pm 6i}{2} = 2 \pm 3i$$
Les solutions sont $2 + 3i$ et $2 - 3i$.

---

## 5. Les nombres complexes

### 5.1 Module et argument

Pour $z = a + bi$, le module est $|z| = \sqrt{a^2 + b^2}$ et un argument $\theta$ vérifie $\cos\theta = \frac{a}{|z|}$ et $\sin\theta = \frac{b}{|z|}$.

Propriétés : $|z|^2 = z\bar z$, $|z_1 z_2| = |z_1||z_2|$, $\arg(z_1 z_2) = \arg z_1 + \arg z_2$, $\arg\left(\frac{z_1}{z_2}\right) = \arg z_1 - \arg z_2$.

**Exemple 5 :** Pour $z = 1 + i\sqrt{3}$, calculer module et argument.

_Solution :_ $|z| = \sqrt{1 + 3} = 2$. $\cos\theta = \frac{1}{2}$, $\sin\theta = \frac{\sqrt{3}}{2}$, donc $\theta = \frac{\pi}{3}$. On écrit $z = 2e^{i\pi/3}$.

### 5.2 Forme trigonométrique et exponentielle

$$z = r(\cos\theta + i\sin\theta) = r\, e^{i\theta}$$

**Exemple 6 :** Calculer $(1 + i)^4$.

_Solution :_ $1 + i = \sqrt{2}\,e^{i\pi/4}$, donc $(1+i)^4 = (\sqrt{2})^4 e^{i\pi} = 4 \times (-1) = -4$.

---

## 6. Erreurs à éviter

- Confondre terme général et somme dans les suites.
- Oublier la condition $q \neq 1$ pour la somme géométrique.
- Oublier le signe du discriminant négatif ($i$ au lieu de $-1$).
- Négliger le point fixe dans les suites récurrentes.
- Se tromper dans les formules de module/argument.

---

## 7. Exercices d'entraînement

**Exercice 1 :** Soit $(u_n)$ arithmétique avec $u_0 = -2$ et $r = 5$. Calculer $u_{15}$ et la somme des 16 premiers termes.

**Exercice 2 :** Soit $(v_n)$ géométrique avec $v_0 = 3$ et $q = 2$. Calculer $v_5$ et $v_0 + \cdots + v_9$.

**Exercice 3 :** Soit $(w_n)$ définie par $w_0 = 1$ et $w_{n+1} = 2w_n + 1$. Déterminer $w_n$ et $\lim w_n$.

**Exercice 4 :** Résoudre dans $\mathbb{C}$ : $z^2 - 2z + 5 = 0$.

**Exercice 5 :** Écrire $z = 2 - 2i$ sous forme trigonométrique puis calculer $z^4$.
