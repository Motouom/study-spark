# Fiche de révision — Terminale — Probabilités et géométrie

**Niveau :** Terminale — Baccalauréat (séries C, D, E, TI)
**Matière :** Mathématiques

---

## 1. Probabilités

- Équiprobabilité : $P(A) = \frac{\text{cas favorables}}{\text{cas possibles}}$
- $P(\bar A) = 1 - P(A)$
- Union : $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
- Conditionnelle : $P(A \mid B) = \frac{P(A \cap B)}{P(B)}$
- Indépendance : $P(A \cap B) = P(A) \times P(B)$

## 2. Loi binomiale $\mathcal{B}(n\,; p)$

- $P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}$
- Espérance : $E(X) = np$
- Variance : $V(X) = np(1-p)$
- Écart-type : $\sigma = \sqrt{V(X)}$

Coefficients binomiaux utiles :
$\binom{n}{0} = \binom{n}{n} = 1$ ; $\binom{n}{1} = n$ ; $\binom{n}{2} = \frac{n(n-1)}{2}$

## 3. Statistiques

- Moyenne : $\bar{x} = \frac{\sum n_i x_i}{\sum n_i}$
- Variance : $V = \frac{\sum n_i (x_i - \bar{x})^2}{\sum n_i}$
- Écart-type : $\sigma = \sqrt{V}$
- Médiane : valeur centrale après tri
- Étendue : $\max - \min$

## 4. Produit scalaire dans le plan

Pour $\vec{u}(x;y)$ et $\vec{v}(x';y')$ :
$$\vec u \cdot \vec v = xx' + yy' = ||\vec u||\,||\vec v|| \cos\theta$$

- Norme : $||\vec u|| = \sqrt{x^2 + y^2}$
- Orthogonalité : $\vec u \cdot \vec v = 0$
- $\cos\theta = \frac{\vec u \cdot \vec v}{||\vec u||\,||\vec v||}$

## 5. Géométrie dans l'espace

- Vecteur : $\overrightarrow{AB} = B - A$
- Norme : $||\vec u|| = \sqrt{x^2 + y^2 + z^2}$
- Produit scalaire : $\vec u \cdot \vec v = xx' + yy' + zz'$
- Plan de vecteur normal $\vec n(a;b;c)$ : $ax + by + cz + d = 0$
- Droite $\parallel$ plan : $\vec u \cdot \vec n = 0$ ; sécante : $\vec u \cdot \vec n \neq 0$

## 6. Aire d'un triangle

- $\mathcal{A} = \frac{1}{2} \times \text{base} \times \text{hauteur}$
- $\mathcal{A} = \frac{1}{2}||\overrightarrow{AB}||\,||\overrightarrow{AC}|| \sin(\angle BAC)$

## 7. Conseils pour l'examen

- Lire soigneusement « avec ou sans remise », « ordre » ou « sans ordre ».
- Utiliser un arbre pondéré pour les tirages successifs.
- Vérifier que toutes les probabilités somment à 1.
- Bien distinguer événements indépendants et incompatibles.
- Toujours mettre une racine carrée pour l'écart-type.
