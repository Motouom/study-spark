# Terminale — Mathématiques Appliquées — Probabilités, statistiques et applications financières

**Niveau :** Terminale — Baccalauréat
**Séries :** ACC / CG / FIG / SES
**Matière :** Mathématiques Appliquées

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

- Calculer des probabilités (cas favorables / cas possibles, événements contraires, réunion, conditionnement) ;
- Construire et exploiter un arbre de probabilités et une formule des probabilités totales ;
- Reconnaître et utiliser la loi binomiale (espérance, variance, probabilités) ;
- Manipuler la loi normale et la règle empirique (68-95-99,7) ;
- Calculer moyenne, variance, écart-type et médiane d'une série statistique ;
- Appliquer les intérêts simples, composés, et les annuités d'emprunt.

---

## 1. Les probabilités

### 1.1 Définitions de base

Pour une expérience aléatoire à issues équiprobables :
$$P(E) = \frac{\text{nombre de cas favorables}}{\text{nombre de cas possibles}}.$$

Propriétés :

- $0 \leq P(E) \leq 1$ ; $P(\text{univers}) = 1$.
- **Événement contraire :** $P(\bar{E}) = 1 - P(E)$.
- **Réunion :** $P(A \cup B) = P(A) + P(B) - P(A \cap B)$.
- Si $A$ et $B$ sont **incompatibles** ($A \cap B = \emptyset$) : $P(A \cup B) = P(A) + P(B)$.

**Exemple :** On lance deux dés. Nombre de cas possibles $= 36$. Obtenir une somme égale à 7 : cas (1,6),(2,5),(3,4),(4,3),(5,2),(6,1), soit 6 cas. $P = \frac{6}{36} = \frac{1}{6}$.

### 1.2 Probabilité conditionnelle

$$P(A \mid B) = \frac{P(A \cap B)}{P(B)} \quad (P(B) \neq 0).$$
Deux événements $A$ et $B$ sont **indépendants** si $P(A \cap B) = P(A) \times P(B)$, ce qui équivaut à $P(A \mid B) = P(A)$.

**Exemple :** $P(A) = 0,4$ et $P(B) = 0,5$ indépendants. $P(A \cap B) = 0,2$ ; $P(A \cup B) = 0,4 + 0,5 - 0,2 = 0,7$ ; $P(A|B) = \frac{0,2}{0,5} = 0,4 = P(A)$.

### 1.3 Arbre de probabilités et probabilités totales

Sur les branches d'un arbre on porte les probabilités conditionnelles. La probabilité d'un chemin est le produit des probabilités le long du chemin. La **formule des probabilités totales** :
$$P(B) = P(A_1)P(B \mid A_1) + P(A_2)P(B \mid A_2) + \dots$$

**Exemple :** Une urne contient 5 boules rouges et 3 bleues ; on tire deux boules **sans remise**.
$P(RR) = \frac{5}{8} \times \frac{4}{7} = \frac{5}{14}$ ; $P(BB) = \frac{3}{8} \times \frac{2}{7} = \frac{3}{28}$ ; $P(\text{même couleur}) = \frac{5}{14} + \frac{3}{28} = \frac{13}{28}$.

---

## 2. La loi binomiale

Une expérience répétée $n$ fois de manière indépendante, avec une probabilité de succès $p$, définit une variable aléatoire $X$ suivant la loi binomiale $B(n ; p)$.

- $P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}$.
- **Espérance :** $E(X) = np$.
- **Variance :** $V(X) = np(1-p)$.

**Exemple :** $X \sim B(10 ; 0,4)$. $E(X) = 4$ ; $V(X) = 2,4$. $P(X = 3) = \binom{10}{3}(0,4)^3(0,6)^7 = 120 \times 0,064 \times 0,02799 \approx 0,215$. $P(X \geq 1) = 1 - P(X=0) = 1 - (0,6)^{10} \approx 0,994$.

---

## 3. La loi normale et la règle empirique

Une variable $X$ suit la loi normale $N(\mu ; \sigma)$ lorsque ses valeurs se répartissent symétriquement autour de la moyenne $\mu$, avec une dispersion mesurée par $\sigma$. On centre et réduit $X$ par :
$$Z = \frac{X - \mu}{\sigma},$$
où $Z$ suit la loi normale centrée réduite $N(0;1)$.

**Règle empirique (68-95-99,7) :**

- $P(\mu - \sigma \leq X \leq \mu + \sigma) \approx 0,68$ ;
- $P(\mu - 2\sigma \leq X \leq \mu + 2\sigma) \approx 0,95$ ;
- $P(\mu - 3\sigma \leq X \leq \mu + 3\sigma) \approx 0,997$.

**Exemple :** $X \sim N(50 ; 10)$. $P(40 \leq X \leq 60) = P(\mu \pm \sigma) \approx 0,68$. Par symétrie, $P(X \leq 50) = 0,5$. Pour $x = 60$, $z = \frac{60-50}{10} = 1$.

---

## 4. Les statistiques descriptives

### 4.1 Moyenne

$$\bar{x} = \frac{x_1 + x_2 + \dots + x_n}{n} \quad \text{ou} \quad \bar{x} = \frac{\sum n_i x_i}{\sum n_i}.$$

### 4.2 Variance et écart-type

$$V = \frac{\sum (x_i - \bar{x})^2}{n} \quad ; \quad \sigma = \sqrt{V}.$$
L'écart-type mesure la dispersion des valeurs autour de la moyenne.

**Exemple :** Série 2, 4, 6, 8, 10. Moyenne $= 6$. Variance $= \frac{(2-6)^2+(4-6)^2+(6-6)^2+(8-6)^2+(10-6)^2}{5} = \frac{40}{5} = 8$. Écart-type $= \sqrt{8} \approx 2,83$.

### 4.3 Médiane, étendue, quartiles

- **Médiane :** valeur centrale après tri (moyenne des deux valeurs centrales si l'effectif est pair).
- **Étendue :** $x_{\max} - x_{\min}$.
- **Quartiles :** $Q_1$ = quart des valeurs, $Q_3$ = trois quarts des valeurs ; l'écart interquartile $Q_3 - Q_1$ mesure la dispersion.

**Exemple :** Série 3, 5, 7, 9, 11, 13 (6 valeurs, pair). Médiane $= \frac{7+9}{2} = 8$. Étendue $= 13 - 3 = 10$.

---

## 5. Les applications financières

### 5.1 Intérêts simples

L'intérêt simple est proportionnel au temps :
$$I = C \times t \times n, \quad V = C + I = C(1 + t n),$$
où $C$ est le capital, $t$ le taux, $n$ le nombre de périodes.

### 5.2 Intérêts composés

Les intérêts s'ajoutent au capital et produisent eux-mêmes des intérêts :
$$V_n = C(1 + i)^n.$$

**Exemple :** $C = 200\,000$, $i = 5\%$. $V_1 = 200\,000 \times 1,05 = 210\,000$ ; $V_2 = 200\,000 \times (1,05)^2 = 220\,500$.

### 5.3 Annuités d'emprunt (annuité constante)

Pour un emprunt $C$ remboursé en $n$ annuités constantes au taux $i$ :
$$a = C \times \frac{i}{1 - (1+i)^{-n}}.$$
Chaque annuité se décompose en **intérêt** (sur le capital restant) et **amortissement** (part du capital). Le capital restant dû après $k$ annuités :
$$C_k = a \times \frac{1 - (1+i)^{-(n-k)}}{i}.$$

**Exemple :** Emprunt de 500 000 FCFA sur 5 ans à 6%. $a = 500\,000 \times \frac{0,06}{1-(1,06)^{-5}}$. $(1,06)^{-5} = 0,7473$ ; $a = 500\,000 \times \frac{0,06}{0,2527} = 500\,000 \times 0,2374 = 118\,700$ FCFA.

### 5.4 Actualisation et valeur actuelle

La valeur actuelle $V_0$ d'un capital $V_n$ disponible dans $n$ périodes est :
$$V_0 = \frac{V_n}{(1+i)^n}.$$

### 5.5 Taux effectif global et taux proportionnels

- Un taux mensuel proportionnel au taux annuel $i$ est $\frac{i}{12}$.
- Le **taux équivalent** mensuel $i_m$ vérifie $(1+i_m)^{12} = 1 + i$, soit $i_m = (1+i)^{1/12} - 1$.

---

## 6. Erreurs à éviter

- Oublier que $P(A \cup B)$ nécessite de retrancher $P(A \cap B)$.
- Tirer avec ou sans remise : ne pas oublier la modification de l'effectif.
- Utiliser la loi binomiale alors que les tirages sont sans remise.
- Confondre variance et écart-type (ne pas oublier la racine).
- Utiliser des intérêts simples quand il faut des intérêts composés.
- Inverser le taux proportionnel et le taux équivalent.

## 7. Exercices d'entraînement

**Exercice 1 :** Une urne contient 4 boules rouges et 6 boules vertes. On tire 2 boules sans remise. Calculer la probabilité d'obtenir deux boules de même couleur.
**Exercice 2 :** $X \sim B(12 ; 0,3)$. Calculer $E(X)$, $V(X)$ et $P(X = 2)$.
**Exercice 3 :** Une entreprise a 60% des pièces de la machine A (2% défectueuses) et 40% de la machine B (5% défectueuses). Calculer la probabilité qu'une pièce défectueuse provienne de A.
**Exercice 4 :** Calculer la moyenne, la variance et l'écart-type de : 100, 120, 150, 180, 250.
**Exercice 5 :** Un capital de 1 000 000 FCFA est placé à 7% par an. Calculer sa valeur après 4 ans, et le temps nécessaire pour qu'il double.
