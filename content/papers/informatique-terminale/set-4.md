# CAMEROON BAC INFORMATIQUE — ÉPREUVE 2 — SÉRIE 4

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

**Exercice 1 (5 points) — Somme des n premiers entiers.**

1. Écris un algorithme qui lit un entier strictement positif `n` et calcule la somme des n premiers entiers naturels (1 + 2 + ... + n) à l'aide d'une boucle `Pour`. _(2 pts)_
2. Propose une seconde version de l'algorithme utilisant une boucle `Tant que`. _(1,5 pt)_
3. Donne une formule mathématique directe permettant de calculer cette somme et vérifie ton résultat pour `n = 10`. _(1,5 pt)_

**Exercice 2 (5 points) — Nombre premier.**

1. Définis un nombre premier. _(1 pt)_
2. Écris un algorithme qui détermine si un entier `n > 1` saisi est premier en testant les diviseurs de 2 à n-1. _(2,5 pts)_
3. Optimise cet algorithme en ne testant les diviseurs que jusqu'à √n. Explique pourquoi cette optimisation est correcte. _(1,5 pt)_

**Exercice 3 (5 points) — Tri d'un tableau.**

1. Énonce le principe du tri par sélection. _(1 pt)_
2. Applique le tri par sélection au tableau `T = [29, 10, 14, 37, 13]` en détaillant chaque étape. _(2,5 pts)_
3. Écris l'algorithme complet du tri par sélection. _(1,5 pt)_

**Exercice 4 (5 points) — Factorielle récursive.**

1. Rappelle la définition récursive de la factorielle d'un entier `n`. _(1 pt)_
2. Écris une fonction récursive `factorielle(n)` qui calcule n!. _(2 pts)_
3. Déroule manuellement l'exécution de `factorielle(4)` en montrant la pile des appels et le retour des valeurs. _(2 pts)_

**Exercice 5 (5 points) — Recherche dichotomique.**

1. Explique dans quelles conditions la recherche dichotomique peut être utilisée. _(1 pt)_
2. Écris l'algorithme de recherche dichotomique d'une valeur `v` dans un tableau trié. _(2,5 pts)_
3. Détermine la complexité temporelle de cet algorithme et justifie. _(1,5 pt)_

---

## SECTION 2 : STRUCTURES DE DONNÉES

**Exercice 6 (5 points) — Pile et file.**

1. Définis la pile et précise son principe de fonctionnement (acronyme). _(1 pt)_
2. Définis la file et précise son principe de fonctionnement. _(1 pt)_
3. Écris les algorithmes des opérations `empiler`, `depiler` pour une pile implémentée par un tableau. _(3 pts)_

**Exercice 7 (5 points) — Parcours d'un arbre binaire.**

1. Définis un arbre binaire et ses principaux termes (racine, feuille, nœud interne, hauteur). _(1,5 pt)_
2. À partir de l'arbre suivant, donne les parcours préfixe, infixe et suffixe :

```
        A
       / \
      B   C
     / \   \
    D   E   F
```

_(3 pts)_ 3. Quelle est la hauteur de cet arbre ? _(0,5 pt)_

**Exercice 8 (5 points) — Graphes.**

1. Définis un graphe orienté et un graphe non orienté. _(1 pt)_
2. Représente le graphe dont les sommets sont A, B, C, D et les arêtes (A-B), (A-C), (B-D), (C-D) à l'aide d'une matrice d'adjacence. _(2 pts)_
3. Donne le parcours en profondeur (DFS) de ce graphe en partant de A, puis le parcours en largeur (BFS). _(2 pts)_

**Exercice 9 (5 points) — Liste chaînée.**

1. Définis une liste chaînée et compare-la à un tableau. _(1,5 pt)_
2. Décris la structure d'un nœud d'une liste chaînée simple. _(1 pt)_
3. Écris un algorithme qui insère un nouveau nœud en tête d'une liste chaînée. _(2,5 pts)_

**Exercice 10 (5 points) — Complexité des structures de données.**

1. Remplis un tableau comparant, pour une pile, une file, un tableau et une liste chaînée, la complexité des opérations « accès à un élément » et « insertion en tête ». _(3 pts)_
2. Justifie pourquoi un tableau permet un accès direct en O(1). _(2 pts)_

---

## SECTION 3 : BASES DE DONNÉES

**Exercice 11 (5 points) — Création d'une base de données.**
Soit une école. On veut gérer les élèves et les classes.

1. Propose le schéma relationnel (tables, attributs, clés) pour stocker les élèves et les classes. _(2 pts)_
2. Écris les commandes SQL de création des tables avec les clés primaires et étrangères. _(3 pts)_

**Exercice 12 (5 points) — Requêtes d'interrogation (SELECT).**
Soit la table `eleves(id, nom, prenom, classe, moyenne)`.

1. Affiche la liste complète des élèves. _(1 pt)_
2. Affiche les noms des élèves de la classe « Terminale C » ayant une moyenne supérieure à 12. _(1,5 pt)_
3. Affiche les élèves triés par moyenne décroissante. _(1 pt)_
4. Calcule la moyenne générale de tous les élèves. _(1,5 pt)_

**Exercice 13 (5 points) — Insertion, modification, suppression.**

1. Insère l'élève « Paul », prénom « Jean », classe « Terminale D », moyenne 14, dans la table `eleves`. _(1,5 pt)_
2. Modifie la moyenne de Paul pour la passer à 15. _(1,5 pt)_
3. Supprime tous les élèves dont la moyenne est inférieure à 8. _(1 pt)_
4. Cite la différence entre `DELETE` et `DROP`. _(1 pt)_

**Exercice 14 (5 points) — Clés primaires et étrangères.**

1. Définis une clé primaire et donne ses propriétés. _(1,5 pt)_
2. Définis une clé étrangère et explique son rôle dans l'intégrité référentielle. _(1,5 pt)_
3. Sur l'exemple des tables `eleves(id, nom, classe_id)` et `classes(id, nom)`, identifie les clés primaires et étrangères. _(2 pts)_

**Exercice 15 (5 points) — Normalisation.**

1. Explique le but de la normalisation d'une base de données. _(1,5 pt)_
2. Donne la définition de la première forme normale (1FN). _(1 pt)_
3. La table suivante est-elle en 1FN ? Justifie : `Inscription(eleve, cours1, cours2, cours3)`. Si non, propose une correction. _(2,5 pts)_

---

## SECTION 4 : RÉSEAUX ET WEB

**Exercice 16 (5 points) — Fonctionnement des réseaux.**

1. Définis un réseau informatique et cite deux types selon leur étendue. _(1,5 pt)_
2. Explique le rôle d'un commutateur (switch) et d'un routeur. _(2 pts)_
3. Différencie adresse IP et adresse MAC. _(1,5 pt)_

**Exercice 17 (5 points) — Modèle client-serveur et protocoles.**

1. Décris le fonctionnement du modèle client-serveur. _(1,5 pt)_
2. Donne le rôle des protocoles TCP, IP, HTTP et DNS. _(2 pts)_
3. Explique en quoi TCP diffère d'UDP et donne un exemple d'usage de chacun. _(1,5 pt)_

**Exercice 18 (5 points) — Page web HTML/CSS.**

1. Donne la structure de base minimale d'une page HTML5 (balises `doctype`, `html`, `head`, `body`). _(2 pts)_
2. Crée une page présentant « Ma page d'accueil » avec un titre de niveau 1, un paragraphe et une image. _(1,5 pt)_
3. Associe un fichier CSS externe et explique comment styliser la couleur du titre. _(1,5 pt)_

**Exercice 19 (5 points) — Cybersécurité.**

1. Définis la cybersécurité et cite ses trois piliers (CIA). _(1,5 pt)_
2. Décris trois menaces informatiques courantes (virus, phishing, DDoS). _(1,5 pt)_
3. Propose trois mesures de protection pour un utilisateur et pour un réseau d'entreprise. _(2 pts)_

**Exercice 20 (5 points) — Cloud computing.**

1. Définis le cloud computing et ses trois modèles de service (IaaS, PaaS, SaaS). _(2 pts)_
2. Cite trois avantages et deux limites du cloud pour une entreprise camerounaise. _(2 pts)_
3. Explique le concept de virtualisation, fondement du cloud. _(1 pt)_
