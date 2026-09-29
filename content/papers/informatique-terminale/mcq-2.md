# CAMEROON BAC INFORMATIQUE — ÉPREUVE 1 (QCM) — SÉRIE 2

## Épreuve de QCM

**Niveau :** Terminale — Baccalauréat
**Séries :** TI, C, D, E
**Matière :** Informatique
**Durée :** 1 heure
**Coefficient :** 2

**Consignes :**

- Cet exercice comporte 10 questions à choix multiples (QCM).
- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.
- Reporte tes réponses sur la feuille prévue à cet effet.
- Chaque bonne réponse vaut 1 point. Aucun point n'est retiré pour une mauvaise réponse.
- Le corrigé se trouve à la fin de l'épreuve.

---

## QUESTIONS

**Question 1.** On considère l'algorithme de tri suivant appliqué au tableau `T = [5, 3, 8, 1]` :

```
Pour i allant de 0 à n-2 :
    Pour j allant de 0 à n-i-2 :
        Si T[j] > T[j+1] Alors
            Échanger T[j] et T[j+1]
        Fin Si
    Fin Pour
Fin Pour
```

Il s'agit de l'algorithme de tri :

A. à bulles (bubble sort)
B. par insertion
C. par sélection
D. par fusion (merge sort)

---

**Question 2.** La complexité temporelle dans le pire des cas de l'algorithme de tri à bulles sur un tableau de taille `n` est :

A. O(n²)
B. O(n)
C. O(n log n)
D. O(log n)

---

**Question 3.** Une structure de données de type « file » obéit au principe :

A. FIFO (premier entré, premier sorti)
B. LIFO (dernier entré, premier sorti)
C. accès direct par indice
D. accès aléatoire immédiat

---

**Question 4.** Dans le langage SQL, la clause qui permet de regrouper des lignes ayant des valeurs identiques dans une colonne est :

A. `GROUP BY`
B. `ORDER BY`
C. `WHERE`
D. `HAVING`

---

**Question 5.** On dispose de la table `notes(note_id, eleve_id, valeur)`. Quelle requête calcule la moyenne des notes ?

A. `SELECT AVG(valeur) FROM notes;`
B. `SELECT SUM(valeur) FROM notes;`
C. `SELECT COUNT(valeur) FROM notes;`
D. `SELECT MAX(valeur) FROM notes;`

---

**Question 6.** Le modèle OSI comporte combien de couches ?

A. 7 couches
B. 4 couches
C. 5 couches
D. 6 couches

---

**Question 7.** Le protocole qui garantit une transmission fiable et ordonnée des données (avec accusé de réception) est :

A. TCP
B. UDP
C. HTTP
D. DNS

---

**Question 8.** On exécute l'algorithme suivant :

```
x ← 1
Tant que x < 100 :
    x ← x * 2
Fin Tant que
```

Combien de fois le corps de la boucle est-il exécuté ?

A. 7 fois
B. 6 fois
C. 8 fois
D. 5 fois

---

**Question 9.** Le chiffrement des données échangées entre un navigateur et un serveur web est assuré par le protocole :

A. HTTPS (avec TLS/SSL)
B. FTP
C. SMTP
D. DNS

---

**Question 10.** Dans une table `eleves(id, nom, classe, moyenne)`, la commande qui permet de supprimer tous les élèves dont la moyenne est inférieure à 5 est :

A. `DELETE FROM eleves WHERE moyenne < 5;`
B. `DROP TABLE eleves WHERE moyenne < 5;`
C. `REMOVE FROM eleves WHERE moyenne < 5;`
D. `DELETE eleves WHERE moyenne < 5;`

---

## CORRIGÉ

1. A — Les comparaisons d'éléments adjacents avec échange successif correspondent au tri à bulles.
2. A — Le tri à bulles a une complexité quadratique O(n²) dans le pire des cas.
3. A — La file suit le principe FIFO (First In, First Out).
4. A — `GROUP BY` regroupe les lignes par valeurs identiques.
5. A — `AVG()` calcule la moyenne d'une colonne.
6. A — Le modèle OSI comporte 7 couches.
7. A — TCP assure la fiabilité (accusés de réception, réordonnancement).
8. A — Les valeurs de x : 2, 4, 8, 16, 32, 64, 128 → 7 exécutions (s'arrête quand x = 128 ≥ 100).
9. A — HTTPS chiffre les échanges via TLS/SSL.
10. A — `DELETE FROM` supprime les lignes répondant à la condition.
