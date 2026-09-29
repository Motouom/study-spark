# Terminale — Mathématiques Appliquées — Les suites et l'algèbre

**Niveau :** Terminale — Baccalauréat
**Séries :** ACC / CG / FIG / SES
**Matière :** Mathématiques Appliquées

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

- Reconnaître et manipuler les suites arithmétiques et géométriques (terme général, somme) ;
- Résoudre des équations et inéquations du second degré à l'aide du discriminant ;
- Résoudre des systèmes d'équations linéaires à deux inconnues ;
- Factoriser des polynômes et résoudre des équations de degré supérieur ;
- Modéliser des situations économiques et financières par des suites (épargne, amortissement, croissance).

---

## 1. Les suites

### 1.1 Suite arithmétique

Une suite $(u_n)$ est **arithmétique** s'il existe un réel $r$ tel que :
$$u_{n+1} = u_n + r.$$
Le réel $r$ est la **raison**.

- **Terme général :** $u_n = u_0 + n r$ (ou $u_n = u_p + (n-p)r$).
- **Somme des $n$ premiers termes :**
  $$S_n = u_0 + u_1 + \dots + u_{n-1} = n \times \frac{u_0 + u_{n-1}}{2}.$$

**Exemple :** $u_0 = 2$, $r = 3$. Alors $u_n = 2 + 3n$. $u_{10} = 2 + 30 = 32$. Somme des 11 premiers termes ($u_0$ à $u_{10}$) : $S = 11 \times \frac{2 + 32}{2} = 11 \times 17 = 187$.

### 1.2 Suite géométrique

Une suite $(v_n)$ est **géométrique** s'il existe un réel $q$ tel que :
$$v_{n+1} = q \times v_n.$$
Le réel $q$ est la **raison**.

- **Terme général :** $v_n = v_0 q^n$.
- **Somme des $n$ premiers termes** (pour $q \neq 1$) :
  $$S_n = v_0 \times \frac{1 - q^n}{1 - q}.$$

**Exemple :** $v_0 = 5$, $q = 2$. Alors $v_n = 5 \times 2^n$. $v_6 = 5 \times 64 = 320$. Somme des 7 premiers termes : $S = 5 \times \frac{1 - 2^7}{1 - 2} = 5 \times \frac{1-128}{-1} = 5 \times 127 = 635$.

### 1.3 Limite d'une suite

- Si $|q| < 1$, alors $q^n \to 0$ : une suite géométrique de raison comprise entre $-1$ et $1$ converge vers 0.
- Si $q > 1$, $q^n \to +\infty$ : la suite diverge vers $+\infty$.
- Une suite arithmétique de raison $r > 0$ tend vers $+\infty$, de raison $r < 0$ vers $-\infty$.

### 1.4 Suites récurrentes et suites associées

Pour une suite définie par $u_{n+1} = a u_n + b$, on peut souvent la ramener à une suite géométrique en considérant $u_n - \ell$ où $\ell$ est le point fixe ($\ell = a\ell + b$, soit $\ell = \frac{b}{1-a}$ si $a \neq 1$).

**Exemple :** $u_{n+1} = 0,5 u_n + 4$, $u_0 = 0$.
Le point fixe : $\ell = \frac{4}{1-0,5} = 8$. Alors $u_{n+1} - 8 = 0,5(u_n - 8)$ : la suite $(u_n - 8)$ est géométrique de raison $0,5$ et premier terme $u_0 - 8 = -8$. Donc $u_n - 8 = -8 \times 0,5^n$, soit $u_n = 8 - 8 \times 0,5^n$. Comme $0,5^n \to 0$, on a $u_n \to 8$.

---

## 2. Les équations du second degré

### 2.1 Le discriminant

Pour $ax^2 + bx + c = 0$ ($a \neq 0$), on calcule :
$$\Delta = b^2 - 4ac.$$

- Si $\Delta > 0$ : deux solutions réelles $x = \frac{-b \pm \sqrt{\Delta}}{2a}$.
- Si $\Delta = 0$ : une solution double $x = -\frac{b}{2a}$.
- Si $\Delta < 0$ : aucune solution réelle.

**Exemple :** Résoudre $x^2 - 5x + 6 = 0$.
$\Delta = 25 - 24 = 1 > 0$ ; $x = \frac{5 \pm 1}{2}$ : $x = 3$ et $x = 2$.

### 2.2 Signe d'un trinôme

Le trinôme $ax^2 + bx + c$ a le **signe de $a$** en dehors des racines et le **signe contraire de $a$** entre les racines (quand $\Delta > 0$). Quand $\Delta = 0$, il est du signe de $a$ (s'annule en la racine double) ; quand $\Delta < 0$, il est toujours du signe de $a$.

### 2.3 Factorisation

Si $\Delta > 0$ et les racines sont $x_1, x_2$ :
$$ax^2 + bx + c = a(x - x_1)(x - x_2).$$

**Exemple :** $x^2 - 5x + 6 = (x - 2)(x - 3)$.

---

## 3. Les équations de degré supérieur

Pour résoudre une équation polynomiale, on factorise.

**Exemple :** Résoudre $x^3 - 4x = 0$.
$x(x^2 - 4) = x(x-2)(x+2) = 0$ ; solutions : $x = 0$, $x = 2$, $x = -2$.

**Méthode de la racine évidente :** si $x = a$ est racine d'un polynôme $P$, alors $P(x) = (x-a)Q(x)$ où $Q$ est de degré inférieur.

**Exemple :** $P(x) = x^3 - 3x + 2$. On voit que $x = 1$ est racine. Division : $P(x) = (x-1)(x^2 + x - 2) = (x-1)(x-1)(x+2)$. Les racines sont $1$ (double) et $-2$.

### Équation bicarrée

Pour $ax^4 + bx^2 + c = 0$, on pose $X = x^2$ et on résout $aX^2 + bX + c = 0$.

**Exemple :** $x^4 - 5x^2 + 4 = 0$. Avec $X = x^2$ : $X^2 - 5X + 4 = 0$, $\Delta = 9$, $X = 1$ ou $X = 4$ ; donc $x = \pm 1$ et $x = \pm 2$.

---

## 4. Les systèmes d'équations linéaires

### 4.1 Méthode de substitution

On exprime une inconnue en fonction de l'autre puis on la remplace.

**Exemple :** $\begin{cases} x + 2y = 5 \\ 3x - y = 1 \end{cases}$.
De la première, $x = 5 - 2y$. Dans la seconde : $3(5-2y) - y = 1 \Rightarrow 15 - 6y - y = 1 \Rightarrow -7y = -14 \Rightarrow y = 2$, puis $x = 1$.

### 4.2 Méthode de combinaison

On multiplie les équations pour éliminer une inconnue par addition ou soustraction.

**Exemple :** Multiplier la 1re par 3 : $3x + 6y = 15$. Soustraire la 2e : $7y = 14$, $y = 2$, $x = 1$.

### 4.3 Interprétation géométrique

Chaque équation représente une droite. Le système a une solution unique si les droites sont sécantes, aucune si elles sont parallèles distinctes, une infinité si elles sont confondues.

---

## 5. Applications économiques et financières

- **Amortissement d'un emprunt** : le capital restant dû suit une suite géométrique de raison $(1+i)$.
- **Capitalisation** : une valeur acquise à intérêts composés est modélisée par $V_n = C(1+i)^n$ (suite géométrique).
- **Croissance d'une production** : une production qui augmente d'un pourcentage fixe chaque année suit une suite géométrique.
- **Consommation d'une ressource qui diminue d'une quantité fixe** : suite arithmétique.

**Exemple :** Un capital de 200 000 FCFA placé à 5% par an. Valeur après $n$ ans : $V_n = 200\,000 \times (1,05)^n$. C'est une suite géométrique de raison $1,05$ ; après 1 an, $V_1 = 210\,000$ FCFA.

---

## 6. Erreurs à éviter

- Confondre suite arithmétique et géométrique.
- Utiliser la formule de la somme géométrique avec $q = 1$.
- Oublier le signe de $a$ dans $ax^2 + bx + c$ pour le tableau de signe.
- Se tromper de signe dans la formule $\Delta = b^2 - 4ac$.
- Oublier de vérifier la solution d'un système.

## 7. Exercices d'entraînement

**Exercice 1 :** Une suite arithmétique vérifie $u_3 = 14$ et $u_8 = 29$. Déterminer $r$, $u_0$, le terme général et la somme $u_0 + \dots + u_{10}$.
**Exercice 2 :** Une suite géométrique vérifie $v_2 = 12$ et $v_5 = 96$. Déterminer $q$, $v_0$, le terme général et la somme des 8 premiers termes.
**Exercice 3 :** Résoudre $2x^2 + 3x - 2 = 0$.
**Exercice 4 :** Résoudre $\begin{cases} 2x - 3y = 7 \\ x + 4y = -2 \end{cases}$.
**Exercice 5 :** Une machine perd 10% de sa valeur chaque année (amortissement dégressif). Elle vaut 500 000 FCFA neuf. Calculer sa valeur après 5 ans.
