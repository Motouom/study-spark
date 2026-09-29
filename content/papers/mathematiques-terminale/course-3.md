# Terminale — Mathématiques — Cours 3 : Les Probabilités et la Géométrie

**Niveau :** Terminale — Baccalauréat (séries C, D, E, TI)
**Matière :** Mathématiques
**Thème :** Probabilités, statistiques et géométrie dans le plan et l'espace

---

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

1. Calculer des probabilités dans le cas d'équiprobabilité.
2. Utiliser la loi binomiale, l'espérance et la variance.
3. Utiliser les probabilités conditionnelles et l'indépendance.
4. Calculer des statistiques : moyenne, variance, écart-type.
5. Manipuler la géométrie vectorielle dans le plan et dans l'espace (produit scalaire, normes).

---

## 1. Probabilités : notions fondamentales

### 1.1 Équiprobabilité

Si tous les résultats sont équiprobables, la probabilité d'un événement $A$ est :
$$P(A) = \frac{\text{nombre de cas favorables}}{\text{nombre de cas possibles}}$$

**Exemple 1 :** Une urne contient 3 boules rouges et 5 boules vertes. Probabilité de tirer une rouge.

_Solution :_ $P = \frac{3}{3 + 5} = \frac{3}{8}$.

### 1.2 Complémentaire et union

$$P(\bar{A}) = 1 - P(A), \qquad P(A \cup B) = P(A) + P(B) - P(A \cap B)$$

**Exemple 2 :** Avec $P(A) = 0,4$ et $P(B) = 0,5$, $P(A \cap B) = 0,2$. Alors :
$$P(A \cup B) = 0,4 + 0,5 - 0,2 = 0,7$$

### 1.3 Probabilité conditionnelle

$$P(A \mid B) = \frac{P(A \cap B)}{P(B)}$$

Deux événements sont **indépendants** si $P(A \cap B) = P(A) \times P(B)$.

**Exemple 3 :** $P(A) = 0,3$, $P(B) = 0,5$ indépendants. Alors $P(A \cap B) = 0,3 \times 0,5 = 0,15$.

---

## 2. La loi binomiale

On répète $n$ fois une expérience de Bernoulli (succès/échec) de manière indépendante, avec probabilité de succès $p$. Alors la variable $X$ qui compte les succès suit la loi $\mathcal{B}(n\,; p)$ avec :
$$P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}$$

Espérance et variance :
$$E(X) = np, \qquad V(X) = np(1-p)$$

**Exemple 4 :** $X \sim \mathcal{B}(8\,; 0,3)$. Calculer $P(X = 3)$.

_Solution :_
$$P(X = 3) = \binom{8}{3} (0,3)^3 (0,7)^5 = 56 \times 0,027 \times 0,16807 \approx 0,254$$

$E(X) = 8 \times 0,3 = 2,4$ et $V(X) = 8 \times 0,3 \times 0,7 = 1,68$.

---

## 3. Statistiques descriptives

### 3.1 Moyenne

$$\bar{x} = \frac{\sum n_i x_i}{\sum n_i}$$

### 3.2 Variance et écart-type

$$V = \frac{\sum n_i (x_i - \bar{x})^2}{\sum n_i}, \qquad \sigma = \sqrt{V}$$

**Exemple 5 :** Série : $12\,; 8\,; 15\,; 10\,; 14$. Moyenne :
$$\bar{x} = \frac{12+8+15+10+14}{5} = \frac{59}{5} = 11,8$$
Variance :
$$V = \frac{(12-11,8)^2 + (8-11,8)^2 + (15-11,8)^2 + (10-11,8)^2 + (14-11,8)^2}{5} = \frac{0,04 + 14,44 + 10,24 + 3,24 + 4,84}{5} = \frac{32,8}{5} = 6,56$$
Écart-type : $\sigma = \sqrt{6,56} \approx 2,56$.

---

## 4. Géométrie vectorielle du plan

### 4.1 Produit scalaire

Pour $\vec{u}(x\,; y)$ et $\vec{v}(x'\,; y')$ :
$$\vec{u} \cdot \vec{v} = xx' + yy'$$

Norme : $||\vec{u}|| = \sqrt{x^2 + y^2}$.

Deux vecteurs sont **orthogonaux** si et seulement si $\vec{u} \cdot \vec{v} = 0$.

### 4.2 Lien avec le cosinus

$$\vec{u} \cdot \vec{v} = ||\vec{u}|| \, ||\vec{v}|| \, \cos\theta \quad \Rightarrow \quad \cos\theta = \frac{\vec{u} \cdot \vec{v}}{||\vec{u}|| \, ||\vec{v}||}$$

**Exemple 6 :** $\vec{u}(3\,; -1)$ et $\vec{v}(-2\,; 4)$.

_Solution :_ $\vec{u} \cdot \vec{v} = 3(-2) + (-1)(4) = -6 - 4 = -10$.
$||\vec{u}|| = \sqrt{10}$, $||\vec{v}|| = \sqrt{20} = 2\sqrt{5}$.
$$\cos\theta = \frac{-10}{\sqrt{10} \times 2\sqrt{5}} = \frac{-10}{2\sqrt{50}} = \frac{-10}{2 \times 5\sqrt{2}} = \frac{-1}{\sqrt{2}}$$
Donc $\theta = \frac{3\pi}{4}$.

---

## 5. Géométrie dans l'espace

### 5.1 Vecteurs dans l'espace

Un vecteur $\vec{u}(x\,; y\,; z)$ a pour norme $||\vec{u}|| = \sqrt{x^2 + y^2 + z^2}$.

**Exemple 7 :** $A(1;0;0)$ et $B(0;1;0)$, alors $\overrightarrow{AB} = B - A = (-1\,; 1\,; 0)$ et $||\overrightarrow{AB}|| = \sqrt{2}$.

### 5.2 Équation cartésienne d'un plan

Un plan $\mathcal{P}$ de vecteur normal $\vec{n}(a;b;c)$ a une équation de la forme :
$$ax + by + cz + d = 0$$

Un point $M(x;y;z)$ appartient au plan si l'équation est vérifiée.

### 5.3 Position relative droite/plan

Soit une droite $(D)$ de vecteur directeur $\vec{u}$ et un plan $\mathcal{P}$ de vecteur normal $\vec{n}$ :

- Si $\vec{u} \cdot \vec{n} = 0$ et le point appartient au plan : $(D)$ est contenue dans le plan ;
- Si $\vec{u} \cdot \vec{n} = 0$ mais pas contenue : $(D)$ est parallèle au plan ;
- Si $\vec{u} \cdot \vec{n} \neq 0$ : $(D)$ coupe le plan en un point.

---

## 6. Erreurs à éviter

- Oublier de soustraire $P(A \cap B)$ dans la formule de l'union.
- Confondre indépendance et événements incompatibles.
- Se tromper dans le coefficient binomial $\binom{n}{k}$.
- Oublier la racine carrée dans l'écart-type.
- Confondre les coordonnées d'un vecteur avec celles d'un point.

---

## 7. Exercices d'entraînement

**Exercice 1 :** Une urne contient 4 rouges et 6 vertes. On tire 2 boules sans remise. Calculer la probabilité d'obtenir 2 rouges puis celle d'obtenir 2 vertes.

**Exercice 2 :** $X \sim \mathcal{B}(10\,; 0,4)$. Calculer $P(X \le 1)$, $E(X)$ et $V(X)$.

**Exercice 3 :** Calculer la moyenne, la variance et l'écart-type de la série $2; 4; 6; 8; 10$.

**Exercice 4 :** $\vec{u}(2\,; -1)$ et $\vec{v}(3\,; 4)$. Calculer le produit scalaire et en déduire si les vecteurs sont orthogonaux.

**Exercice 5 :** Dans l'espace, montrer que les points $A(1;0;0)$, $B(0;1;0)$, $C(0;0;1)$ forment un triangle rectangle en $A$.
