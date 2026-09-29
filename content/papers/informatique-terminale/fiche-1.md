# Fiche — Terminale — Informatique — Algorithmique et programmation

**Niveau :** Terminale — Baccalauréat
**Séries :** TI, C, D, E
**Matière :** Informatique

---

# Fiche de révision — Algorithmique et programmation

## Définitions clés

- **Algorithme** : suite finie, précise et déterministe d'instructions produisant un résultat.
- **Variable** : espace mémoire nommé dont la valeur change. **Constante** : valeur fixe.
- **Fonction** : bloc nommé retournant une valeur. **Procédure** : bloc exécutant des actions.
- **Récursivité** : fonction qui s'appelle elle-même (nécessite un cas de base).

## Types de données

| Type      | Valeurs          | Exemple   |
| --------- | ---------------- | --------- |
| Entier    | nombres entiers  | 42        |
| Réel      | nombres décimaux | 3,14      |
| Booléen   | Vrai / Faux      | Vrai      |
| Caractère | 1 caractère      | 'A'       |
| Chaîne    | texte            | "Bonjour" |

## Opérateurs

- Arithmétiques : `+ - * / div mod`
- Comparaison : `= ≠ < > ≤ ≥`
- Logiques : `ET OU NON`

## Structures de contrôle

- **Séquentielle** : instructions dans l'ordre.
- **Conditionnelle** : `Si ... Alors ... Sinon ... Fin Si`.
- **Boucle Pour** : nombre connu d'itérations.
- **Boucle Tant que** : tant que la condition est vraie.
- **Répéter ... Jusqu'à** : au moins une exécution.

## Exemple type — Somme des n premiers entiers

```
s ← 0
Pour i allant de 1 à n
    s ← s + i
Fin Pour
```

Formule directe : s = n(n+1)/2.

## Complexités à retenir

| O(1)          | O(log n)               | O(n)                   | O(n log n) | O(n²)                              |
| ------------- | ---------------------- | ---------------------- | ---------- | ---------------------------------- |
| accès tableau | recherche dichotomique | recherche séquentielle | tri fusion | tri à bulles, insertion, sélection |

## Tris — principes

- **À bulles** : compare les voisins et fait remonter les max.
- **Par insertion** : insère chaque élément à sa place.
- **Par sélection** : place le minimum en tête à chaque passe.
- **Par fusion** : diviser pour régner.

## Recherche

- **Séquentielle** : parcourt tout le tableau, O(n).
- **Dichotomique** : sur tableau **trié**, élimine la moitié à chaque étape, O(log n).

## Erreurs fréquentes à l'examen

- Boucle infinie (condition d'arrêt oubliée).
- Confusion affectation `←` / comparaison `=`.
- Indice hors bornes du tableau.
- Récursivité sans cas de base.

## Conseils pour l'épreuve

- Nommer les types de variables.
- Écrire clairement chaque boucle avec `Fin Pour` / `Fin Tant que`.
- Dérouler l'algorithme sur un petit exemple pour vérifier.
- Présenter les schémas et tableaux demandés.
