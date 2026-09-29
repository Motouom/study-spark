# CAMEROON BAC INFORMATIQUE — ÉPREUVE 2 — SÉRIE 5

**Niveau :** Terminale — Baccalauréat
**Séries :** TI, C, D, E
**Matière :** Informatique
**Durée :** 3 heures
**Coefficient :** 2

**Consignes :**

- Réponds à toutes les questions de manière claire et organisée.
- Montre tous les calculs, raisonnements et justifications.
- Utilise la terminologie et les normes de présentation de l'examen camerounais.
- Les schémas, tableaux et algorithmes doivent être inclus lorsque c'est utile.
- Chaque exercice est noté sur 5 points.

---

## SECTION 1 : ALGORITHMIQUE ET PROGRAMMATION

**Exercice 1 (5 points) — Maximum d'un tableau.**

1. Écris un algorithme qui lit un tableau de 10 entiers puis affiche la valeur maximale et sa position. _(2,5 pts)_
2. Déroule l'algorithme sur le tableau `[12, 45, 8, 32, 67, 5, 19, 24, 3, 50]` en indiquant l'évolution de la variable `max`. _(2,5 pts)_

**Exercice 2 (5 points) — Fibonacci.**

1. Donne la définition récursive de la suite de Fibonacci : F(0)=0, F(1)=1, F(n)=F(n-1)+F(n-2). _(1 pt)_
2. Écris une fonction récursive `fibonacci(n)` qui retourne F(n). _(2 pts)_
3. Calcule F(6) en détaillant les appels récursifs, et explique pourquoi cette version récursive est inefficace (complexité). _(2 pts)_

**Exercice 3 (5 points) — Tri par insertion.**

1. Énonce le principe du tri par insertion. _(1 pt)_
2. Applique le tri par insertion au tableau `[8, 3, 6, 1, 7]` en détaillant chaque passe. _(2,5 pts)_
3. Écris l'algorithme complet du tri par insertion. _(1,5 pt)_

**Exercice 4 (5 points) — Nombre palindrome.**

1. Définis un nombre palindrome. _(1 pt)_
2. Écris un algorithme qui vérifie si un entier `n` lu est palindrome en comparant ses chiffres. _(2,5 pts)_
3. Vérifie tes résultats pour `n = 12321` et `n = 1234`. _(1,5 pt)_

**Exercice 5 (5 points) — PGCD par l'algorithme d'Euclide.**

1. Énonce l'algorithme d'Euclide pour calculer le PGCD de deux entiers. _(1,5 pt)_
2. Écris un algorithme itératif qui calcule le PGCD(a, b). _(2 pts)_
3. Calcule PGCD(48, 18) en détaillant les divisions successives. _(1,5 pt)_

---

## SECTION 2 : STRUCTURES DE DONNÉES

**Exercice 6 (5 points) — File d'attente.**

1. Rappelle le principe FIFO de la file. _(1 pt)_
2. Écris les algorithmes `enfiler` (ajout en queue) et `defiler` (retrait en tête) pour une file implémentée par tableau. _(2,5 pts)_
3. Donne deux exemples concrets d'utilisation d'une file en informatique. _(1,5 pt)_

**Exercice 7 (5 points) — Arbre binaire de recherche (ABR).**

1. Définis un arbre binaire de recherche et sa propriété fondamentale. _(1,5 pt)_
2. Insère successivement les valeurs 50, 30, 70, 20, 40, 60, 80 dans un ABR initialement vide et dessine le résultat. _(2 pts)_
3. Écris un algorithme de recherche d'une valeur dans un ABR. _(1,5 pt)_

**Exercice 8 (5 points) — Tri topologique.**

1. Définis un tri topologique et précise à quel type de graphe il s'applique. _(1,5 pt)_
2. Propose un exemple de tâches dépendantes (prérequis) et représente-les par un graphe. _(2 pts)_
3. Donne un ordre topologique valide pour ce graphe. _(1,5 pt)_

**Exercice 9 (5 points) — Double liste chaînée.**

1. Décris la structure d'un nœud d'une double liste chaînée (avec pointeurs précédent et suivant). _(1,5 pt)_
2. Compare les avantages d'une double liste par rapport à une liste simple. _(1,5 pt)_
3. Écris l'algorithme d'insertion en tête d'une double liste chaînée. _(2 pts)_

**Exercice 10 (5 points) — Notation polonaise inversée (NPI).**

1. Explique le principe de la notation polonaise inversée et son lien avec la pile. _(1,5 pt)_
2. Évalue l'expression NPI suivante à l'aide d'une pile : `3 4 + 2 *`. _(2 pts)_
3. Écris un algorithme qui évalue une expression NPI donnée. _(1,5 pt)_

---

## SECTION 3 : BASES DE DONNÉES

**Exercice 11 (5 points) — Schéma d'une bibliothèque.**
On veut gérer une bibliothèque : les livres et les auteurs.

1. Propose un schéma relationnel (tables `livres`, `auteurs`) avec les clés primaires et étrangères. _(2,5 pts)_
2. Écris les commandes SQL de création des tables. _(2,5 pts)_

**Exercice 12 (5 points) — Requêtes multi-tables (JOIN).**
Soient `eleves(id, nom, classe_id)` et `classes(id, libelle)`.

1. Affiche le nom de chaque élève avec le libellé de sa classe en utilisant un `JOIN`. _(2,5 pts)_
2. Affiche le nombre d'élèves par classe. _(1,5 pt)_
3. Affiche les classes qui n'ont aucun élève. _(1 pt)_

**Exercice 13 (5 points) — Fonctions d'agrégation.**
Soit la table `notes(id, matiere, valeur)`.

1. Calcule la somme, la moyenne, le minimum et le maximum des notes. _(2 pts)_
2. Affiche la moyenne par matière. _(1,5 pt)_
3. Affiche uniquement les matières dont la moyenne est supérieure à 10 (utilise `HAVING`). _(1,5 pt)_

**Exercice 14 (5 points) — Intégrité et contraintes.**

1. Cite les principaux types de contraintes d'intégrité en SQL (PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, CHECK). _(2 pts)_
2. Explique le rôle de chacune et donne un exemple. _(2 pts)_
3. Montre comment la contrainte `CHECK` peut empêcher une note négative. _(1 pt)_

**Exercice 15 (5 points) — Modèle relationnel et algèbre relationnelle.**

1. Définis la relation, l'attribut, le tuple et le domaine. _(2 pts)_
2. Explique les opérations « sélection », « projection » et « jointure ». _(1,5 pt)_
3. Donne la traduction SQL de chacune de ces opérations sur un exemple. _(1,5 pt)_

---

## SECTION 4 : RÉSEAUX ET WEB

**Exercice 16 (5 points) — Adressage IP.**

1. Explique la structure d'une adresse IPv4 (réseau + hôte) et le rôle du masque de sous-réseau. _(2 pts)_
2. Donne la classe d'une adresse commençant par 192.168.x.x et explique son usage privé. _(1,5 pt)_
3. Différencie IPv4 et IPv6. _(1,5 pt)_

**Exercice 17 (5 points) — DNS et nommage.**

1. Explique le rôle du système DNS. _(1,5 pt)_
2. Décris le processus de résolution d'un nom de domaine en adresse IP. _(2 pts)_
3. Donne la signification des extensions de domaine .cm, .com, .org, .edu. _(1,5 pt)_

**Exercice 18 (5 points) — HTML, CSS et JavaScript.**

1. Différencie le rôle du HTML, du CSS et du JavaScript. _(1,5 pt)_
2. Crée une page HTML avec un bouton qui, au clic, affiche « Bonjour ! » (utilise un peu de JavaScript). _(2 pts)_
3. Explique la notion de feuille de style en cascade et la priorité entre sélecteurs. _(1,5 pt)_

**Exercice 19 (5 points) — Sécurité des mots de passe.**

1. Explique pourquoi il faut éviter les mots de passe simples et réutilisés. _(1,5 pt)_
2. Décris le principe du hachage et pourquoi on ne stocke pas les mots de passe en clair. _(2 pts)_
3. Propose une politique de mots de passe robuste pour un établissement scolaire. _(1,5 pt)_

**Exercice 20 (5 points) — Internet des objets (IoT) et tendances.**

1. Définis l'Internet des objets (IoT) et donne deux exemples d'objets connectés. _(1,5 pt)_
2. Cite trois enjeux de sécurité liés à l'IoT. _(1,5 pt)_
3. Explique l'intérêt de la 4G/5G et de la fibre optique pour le développement du numérique au Cameroun. _(2 pts)_
