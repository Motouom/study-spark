# Terminale — Informatique — L'algorithmique et la programmation

**Niveau :** Terminale — Baccalauréat
**Séries :** TI, C, D, E
**Matière :** Informatique

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

- Définir un algorithme et en connaître les caractéristiques essentielles ;
- Identifier et utiliser les types de données, les variables et les constantes ;
- Maîtriser les structures de contrôle (séquentielle, conditionnelle, itérative) ;
- Écrire des algorithmes avec des tableaux et des fonctions ;
- Comprendre la notion de récursivité et de complexité algorithmique ;
- Analyser et concevoir des algorithmes de recherche et de tri.

---

## 1. Notion d'algorithme

Un **algorithme** est une suite finie et ordonnée d'instructions qui, exécutée à partir d'un état initial (données d'entrée), produit un résultat (données de sortie) en un nombre fini d'étapes.

**Caractéristiques d'un algorithme :**

- **Fini** : il se termine après un nombre fini d'opérations ;
- **Déterministe** : à mêmes entrées correspondent toujours les mêmes sorties ;
- **Précis** : chaque instruction est non ambiguë ;
- **Général** : il traite une classe de problèmes, pas un cas particulier.

**Exemple :** l'algorithme « Calculer la somme de deux nombres » est général (valable pour tout couple de nombres), fini (3 étapes) et précis.

---

## 2. Variables, constantes et types de données

Une **variable** est un espace mémoire nommé pouvant contenir une valeur qui change au cours de l'exécution. Une **constante** garde une valeur fixe.

Les principaux **types** de données :

| Type              | Description                            | Exemples    |
| ----------------- | -------------------------------------- | ----------- |
| Entier (Integer)  | Nombres entiers (positifs ou négatifs) | -5, 0, 42   |
| Réel (Real)       | Nombres décimaux                       | 3,14 ; -2,5 |
| Booléen (Boolean) | Vrai / Faux                            | Vrai, Faux  |
| Caractère (Char)  | Un seul caractère                      | 'A', '7'    |
| Chaîne (String)   | Suite de caractères                    | "Bonjour"   |

**Affectation :** l'opérateur `←` attribue une valeur à une variable.

```
x ← 5
x ← x + 3   // x vaut maintenant 8
```

**Opérateurs :**

- **Arithmétiques** : `+`, `-`, `*`, `/`, `div` (division entière), `mod` (reste).
- **Comparaison** : `=`, `≠`, `<`, `>`, `≤`, `≥`.
- **Logiques** : `ET`, `OU`, `NON`.

---

## 3. Structures de contrôle

### 3.1. La structure séquentielle

Les instructions s'exécutent les unes après les autres, dans l'ordre d'écriture.

### 3.2. La structure conditionnelle

Elle permet de n'exécuter certaines instructions que si une condition est vraie.

```
Si condition Alors
    instructions
Sinon
    autres instructions
Fin Si
```

**Exemple :** déterminer la valeur absolue d'un nombre.

```
Si x < 0 Alors
    abs ← -x
Sinon
    abs ← x
Fin Si
```

### 3.3. La structure itérative (boucles)

- **Boucle `Pour`** : nombre d'itérations connu à l'avance.

```
Pour i allant de 1 à 10
    Écrire(i)
Fin Pour
```

- **Boucle `Tant que`** : on répète tant qu'une condition reste vraie.

```
x ← 1
Tant que x ≤ 100
    x ← x * 2
Fin Tant que
```

- **Boucle `Répéter ... Jusqu'à`** : exécutée au moins une fois, on s'arrête quand la condition devient vraie.

**Exemple :** calculer la somme des n premiers entiers.

```
Écrire("Entrez n : ")
Lire(n)
s ← 0
Pour i allant de 1 à n
    s ← s + i
Fin Pour
Écrire("La somme est ", s)
```

---

## 4. Les tableaux

Un **tableau** est une collection de valeurs de même type, repérées par un indice. On distingue les tableaux à une ou plusieurs dimensions.

**Déclaration :** `T : tableau[1..10] d'entiers`

**Manipulation :**

```
T[1] ← 12
Écrire(T[3])
```

**Exemple :** rechercher le maximum d'un tableau.

```
max ← T[1]
Pour i allant de 2 à n
    Si T[i] > max Alors
        max ← T[i]
    Fin Si
Fin Pour
Écrire(max)
```

**Exemple :** recherche séquentielle d'une valeur `v`.

```
trouve ← Faux
i ← 1
Tant que (i ≤ n) et (trouve = Faux)
    Si T[i] = v Alors
        trouve ← Vrai
    Sinon
        i ← i + 1
    Fin Si
Fin Tant que
Si trouve Alors Écrire("Trouvé en position ", i) Sinon Écrire("Absent")
```

---

## 5. Les fonctions et procédures

Une **fonction** est un bloc de code nommé et réutilisable qui retourne une valeur. Une **procédure** exécute des actions sans retourner de valeur. Elles permettent de structurer et d'éviter la duplication du code.

**Exemple :** fonction qui calcule la factorielle.

```
Fonction factorielle(n : entier) : entier
    Si n ≤ 1 Alors
        Retourner 1
    Sinon
        Retourner n * factorielle(n - 1)
    Fin Si
Fin Fonction
```

Les **paramètres** sont les données d'entrée ; ils peuvent être passés par valeur (copie) ou par référence (adresse).

---

## 6. La récursivité

Un algorithme est **récursif** lorsqu'une fonction s'appelle elle-même. Deux éléments sont indispensables :

- un **cas de base** (condition d'arrêt) ;
- un **appel récursif** qui se rapproche du cas de base.

**Exemple :** factorielle (voir ci-dessus). **Exemple :** suite de Fibonacci.

```
Fonction fibonacci(n) : entier
    Si n = 0 Alors Retourner 0
    Sinon Si n = 1 Alors Retourner 1
    Sinon Retourner fibonacci(n-1) + fibonacci(n-2)
Fin Fonction
```

**Limite :** la récursivité naïve de Fibonacci est très inefficace (complexité exponentielle), car elle recalcule les mêmes valeurs.

---

## 7. Complexité algorithmique

La **complexité** mesure la quantité de ressources (temps, mémoire) nécessaires à un algorithme en fonction de la taille `n` des données. On utilise la notation de Landau (grand O).

| Complexité | Nom            | Exemple d'algorithme            |
| ---------- | -------------- | ------------------------------- |
| O(1)       | Constante      | Accès à un élément de tableau   |
| O(log n)   | Logarithmique  | Recherche dichotomique          |
| O(n)       | Linéaire       | Recherche séquentielle          |
| O(n log n) | Quasi-linéaire | Tri par fusion                  |
| O(n²)      | Quadratique    | Tri à bulles, tri par insertion |

---

## 8. Algorithmes de recherche et de tri

**Recherche dichotomique :** applicable uniquement à un tableau trié ; on compare à l'élément central et on élimine la moitié du tableau à chaque étape. Complexité O(log n).

```
debut ← 1 ; fin ← n
Tant que debut ≤ fin
    milieu ← (debut + fin) div 2
    Si T[milieu] = v Alors Retourner milieu
    Sinon Si T[milieu] < v Alors debut ← milieu + 1
    Sinon fin ← milieu - 1
Fin Tant que
Retourner "Absent"
```

**Tri à bulles :** on fait remonter les grands éléments en comparant les voisins. Complexité O(n²).
**Tri par insertion :** on insère chaque élément à sa place dans la partie triée. Complexité O(n²).
**Tri par sélection :** on cherche le minimum et on le place en tête à chaque passe. Complexité O(n²).
**Tri par fusion :** diviser pour régner, complexité O(n log n).

---

## 9. Erreurs à éviter

- Oublier la condition d'arrêt d'une boucle `Tant que` (boucle infinie) ;
- Confondre affectation (`←`) et comparaison (`=`) ;
- Dépasser les bornes d'un tableau (indice hors limites) ;
- Utiliser une récursivité sans cas de base ;
- Confondre les complexités des différents tris.

---

## 10. Exercices d'entraînement

**Exercice 1 :** Écrire un algorithme qui affiche la table de multiplication d'un entier n saisi.
**Exercice 2 :** Écrire un algorithme qui détermine si un entier n est premier.
**Exercice 3 :** Écrire une fonction récursive qui calcule la somme des chiffres d'un entier.
**Exercice 4 :** Trier un tableau de 10 entiers par la méthode du tri par insertion et afficher le résultat.
**Exercice 5 :** Écrire un algorithme qui compte dans un tableau le nombre d'occurrences d'une valeur v.
