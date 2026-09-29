# CAMEROON BAC INFORMATIQUE — ÉPREUVE 2 — SÉRIE 7

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

**Exercice 1 (5 points) — Moyenne et mention.**

1. Écris un algorithme qui lit les notes de 5 matières, calcule la moyenne et affiche la mention (Admis si moyenne ≥ 10, sinon Redoublant). _(2,5 pts)_
2. Précise le type de chaque variable utilisée. _(1,5 pt)_
3. Teste l'algorithme avec les notes 12, 9, 14, 11, 8. _(1 pt)_

**Exercice 2 (5 points) — Chiffres d'un nombre.**

1. Écris un algorithme qui affiche les chiffres d'un entier n de droite à gauche en les séparant par des virgules. _(2,5 pts)_
2. Calcule le nombre de chiffres d'un entier n. _(1,5 pt)_
3. Applique au nombre 2024. _(1 pt)_

**Exercice 3 (5 points) — Suite de Syracuse.**

1. Énonce les règles de la suite de Syracuse (Collatz) : si n pair, n/2 ; si n impair, 3n+1. _(1 pt)_
2. Écris un algorithme qui affiche les termes successifs de cette suite jusqu'à atteindre 1, en partant d'un entier positif n. _(2,5 pts)_
3. Déroule la suite à partir de n = 6. _(1,5 pt)_

**Exercice 4 (5 points) — Recherche et déplacement.**

1. Écris un algorithme qui déplace tous les zéros d'un tableau à la fin tout en gardant l'ordre des autres éléments. _(3 pts)_
2. Applique au tableau `[0, 5, 0, 3, 8, 0]`. _(2 pts)_

**Exercice 5 (5 points) — Somme des chiffres.**

1. Écris une fonction récursive `sommeChiffres(n)` qui retourne la somme des chiffres d'un entier positif. _(2,5 pts)_
2. Écris une version itérative. _(1,5 pt)_
3. Calcule la somme des chiffres de 12345. _(1 pt)_

---

## SECTION 2 : STRUCTURES DE DONNÉES

**Exercice 6 (5 points) — Évaluation d'une expression arithmétique.**

1. Convertis l'expression infixe `(3 + 4) * 2` en notation postfixe (NPI). _(2 pts)_
2. Évalue cette NPI à l'aide d'une pile. _(2 pts)_
3. Justifie l'intérêt de la NPI pour le calcul par une machine. _(1 pt)_

**Exercice 7 (5 points) — Suppression dans un ABR.**

1. Rappelle la propriété d'un arbre binaire de recherche. _(1 pt)_
2. Décris les trois cas de suppression d'un nœud dans un ABR (feuille, un enfant, deux enfants). _(2 pts)_
3. À partir de l'ABR ci-dessous, supprime le nœud 30 et dessine le résultat :

```
       50
      /  \
     30   70
    /  \
   20   40
```

_(2 pts)_

**Exercice 8 (5 points) — Parcours en largeur (BFS).**

1. Explique le principe du parcours en largeur d'un graphe (avec une file). _(1,5 pt)_
2. Applique le BFS au graphe suivant en partant de A, en donnant l'ordre de visite :

```
A - B
|   |
C - D
```

_(2 pts)_ 3. Écris l'algorithme du BFS. _(1,5 pt)_

**Exercice 9 (5 points) — Détection d'une boucle dans une liste chaînée.**

1. Explique le problème de la détection d'un cycle dans une liste chaînée. _(1 pt)_
2. Décris l'algorithme de Floyd (deux pointeurs) pour détecter un cycle. _(2 pts)_
3. Écris l'algorithme correspondant en pseudo-code. _(2 pts)_

**Exercice 10 (5 points) — Arbres et expression.**

1. Explique comment représenter une expression arithmétique par un arbre binaire. _(1,5 pt)_
2. Construis l'arbre de l'expression `a * (b + c)`. _(1,5 pt)_
3. Donne les parcours préfixe, infixe et suffixe de cet arbre et relie-les aux notations polonaise, infixe et postfixe. _(2 pts)_

---

## SECTION 3 : BASES DE DONNÉES

**Exercice 11 (5 points) — Base de données d'une banque.**
On gère des clients et leurs comptes.

1. Propose un schéma relationnel (tables `clients`, `comptes`) avec clés primaires et étrangères. _(2,5 pts)_
2. Écris les commandes SQL de création des tables. _(2,5 pts)_

**Exercice 12 (5 points) — Jointures et sous-requêtes.**
Soient `eleves(id, nom, classe_id)` et `classes(id, libelle)`.

1. Affiche les élèves dont la classe est « Terminale C » en utilisant une sous-requête. _(2 pts)_
2. Affiche les élèves n'appartenant à aucune classe connue. _(1,5 pt)_
3. Compte le nombre total d'élèves. _(1,5 pt)_

**Exercice 13 (5 points) — Sauvegarde et restauration.**

1. Explique l'importance des sauvegardes (backups) pour une base de données. _(1,5 pt)_
2. Distingue sauvegarde complète, différentielle et incrémentale. _(2 pts)_
3. Propose une stratégie de sauvegarde pour une petite entreprise. _(1,5 pt)_

**Exercice 14 (5 points) — Droits d'accès.**

1. Explique le principe des privilèges en SQL (GRANT et REVOKE). _(2 pts)_
2. Donne un exemple accordant un droit de lecture sur la table `eleves` à un utilisateur `secretariat`. _(1,5 pt)_
3. Justifie l'importance du contrôle d'accès pour la sécurité des données. _(1,5 pt)_

**Exercice 15 (5 points) — Du modèle conceptuel au modèle relationnel.**

1. Définis le modèle entité-association (entité, association, attribut, cardinalité). _(2 pts)_
2. Explique les règles de passage d'un MCD au modèle relationnel (tables). _(1,5 pt)_
3. À partir de l'association « Un professeur enseigne plusieurs matières, une matière est enseignée par un seul professeur », déduis le schéma relationnel. _(1,5 pt)_

---

## SECTION 4 : RÉSEAUX ET WEB

**Exercice 16 (5 points) — LAN, WAN et interconnexion.**

1. Définis et compare LAN, MAN et WAN. _(2 pts)_
2. Explique le rôle du routeur dans l'interconnexion de réseaux. _(1,5 pt)_
3. Explique le rôle de la passerelle (gateway) et du NAT. _(1,5 pt)_

**Exercice 17 (5 points) — Serveur web et hébergement.**

1. Explique le rôle d'un serveur web et cite deux exemples de logiciels serveur. _(1,5 pt)_
2. Différencie hébergement mutualisé, dédié et cloud. _(2 pts)_
3. Explique l'importance du nom de domaine et de l'hébergement pour un site d'entreprise. _(1,5 pt)_

**Exercice 18 (5 points) — Accessibilité et responsive design.**

1. Définis le responsive design et son intérêt. _(1,5 pt)_
2. Explique le rôle des media queries en CSS avec un exemple. _(2 pts)_
3. Cite trois principes d'accessibilité web pour les personnes handicapées. _(1,5 pt)_

**Exercice 19 (5 points) — Sauvegarde et sécurité des données.**

1. Différencie disponibilité, intégrité et confidentialité (CIA). _(1,5 pt)_
2. Explique comment le chiffrement et les sauvegardes protègent ces trois aspects. _(2 pts)_
3. Propose un plan de réponse en cas de perte de données suite à une attaque ransomware. _(1,5 pt)_

**Exercice 20 (5 points) — Le numérique au Cameroun.**

1. Cite trois initiatives ou infrastructures numériques mises en place au Cameroun (e-gouvernement, fibre optique, etc.). _(2 pts)_
2. Explique les avantages du télétravail et de l'école à distance. _(1,5 pt)_
3. Identifie deux défis (fracture numérique, coût, formation) et propose une solution pour chacun. _(1,5 pt)_
