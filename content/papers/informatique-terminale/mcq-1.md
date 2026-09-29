# CAMEROON BAC INFORMATIQUE — ÉPREUVE 1 (QCM) — SÉRIE 1

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

**Question 1.** On exécute l'algorithme suivant :

```
n ← 5
s ← 0
Pour i allant de 1 à n :
    s ← s + i * 2
Fin Pour
```

Quelle est la valeur finale de `s` ?

A. 15
B. 30
C. 25
D. 20

---

**Question 2.** Une fonction récursive permettant de calculer la factorielle d'un entier positif `n` doit impérativement contenir :

A. une condition d'arrêt (cas de base) et un appel récursif
B. une boucle `Pour`
C. une variable globale
D. un tableau de valeurs

---

**Question 3.** La structure de données qui fonctionne selon le principe « dernier entré, premier sorti » (LIFO) est :

A. la pile
B. la file
C. le tableau
D. la liste chaînée simple

---

**Question 4.** Dans une base de données relationnelle, la clé primaire d'une table :

A. identifie de manière unique chaque enregistrement de la table
B. référence une clé d'une autre table
C. peut contenir des valeurs nulles et dupliquées
D. est toujours un champ de type numérique

---

**Question 5.** Quelle requête SQL permet d'obtenir la liste des élèves dont la moyenne est supérieure à 10, triés par ordre décroissant de moyenne ?

A. `SELECT * FROM eleves WHERE moyenne > 10 ORDER BY moyenne DESC;`
B. `SELECT * FROM eleves WHERE moyenne > 10 ORDER BY moyenne ASC;`
C. `SELECT moyenne FROM eleves WHERE moyenne > 10 GROUP BY moyenne;`
D. `SELECT * FROM eleves HAVING moyenne > 10 ORDER BY moyenne DESC;`

---

**Question 6.** L'adresse IP d'un ordinateur sur un réseau IPv4 est composée de :

A. 4 octets, soit 32 bits
B. 6 octets, soit 48 bits
C. 2 octets, soit 16 bits
D. 8 octets, soit 64 bits

---

**Question 7.** Le protocole de la couche application utilisé pour le transfert de fichiers entre un client et un serveur est :

A. FTP
B. TCP
C. IP
D. UDP

---

**Question 8.** La recherche dichotomique dans un tableau trié de 1024 éléments nécessite au maximum, dans le pire des cas :

A. 10 comparaisons
B. 512 comparaisons
C. 1024 comparaisons
D. 1023 comparaisons

---

**Question 9.** Parmi les attaques informatiques suivantes, laquelle consiste à inciter une victime à révéler des informations confidentielles (identifiants, mots de passe) en se faisant passer pour un organisme de confiance ?

A. le phishing (hameçonnage)
B. le ver informatique
C. le déni de service distribué (DDoS)
D. le cheval de Troie

---

**Question 10.** On considère le fragment de code suivant en pseudo-code :

```
Si x > 10 Alors
    y ← x - 5
Sinon
    y ← x + 5
Fin Si
```

Si `x = 7`, quelle est la valeur de `y` ?

A. 12
B. 2
C. 7
D. 5

---

## CORRIGÉ

1. B — La boucle additionne `2, 4, 6, 8, 10` ; la somme vaut 30.
2. A — Une fonction récursive exige un cas de base et un appel récursif pour éviter une boucle infinie.
3. A — La pile suit la règle LIFO (Last In, First Out).
4. A — La clé primaire identifie chaque ligne de façon unique (non nulle, non dupliquée).
5. A — `WHERE` filtre, `ORDER BY ... DESC` trie par ordre décroissant.
6. A — Une adresse IPv4 = 4 octets = 32 bits.
7. A — FTP (File Transfer Protocol) sert au transfert de fichiers.
8. A — log₂(1024) = 10 comparaisons au maximum.
9. A — Le phishing est une escroquerie par usurpation d'identité pour soutirer des données.
10. A — `x = 7` n'est pas supérieur à 10, donc `y = 7 + 5 = 12`.
