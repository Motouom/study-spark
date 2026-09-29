# CAMEROON BAC INFORMATIQUE — ÉPREUVE 2 — SÉRIE 6

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

**Exercice 1 (5 points) — Comptage et statistiques simples.**

1. Écris un algorithme qui lit N entiers et compte combien sont pairs et combien sont impairs. _(2,5 pts)_
2. Teste l'algorithme sur la série `[4, 7, 8, 11, 2, 9]`. _(1 pt)_
3. Modifie l'algorithme pour calculer la moyenne des entiers pairs. _(1,5 pt)_

**Exercice 2 (5 points) — Conversion en binaire.**

1. Rappelle la valeur de chaque bit dans la représentation binaire d'un nombre. _(1 pt)_
2. Écris un algorithme qui convertit un entier décimal positif en sa représentation binaire (par divisions successives). _(2,5 pts)_
3. Convertis 13 et 25 en binaire à l'aide de cet algorithme. _(1,5 pt)_

**Exercice 3 (5 points) — Puissance d'un nombre.**

1. Écris une fonction itérative `puissance(x, n)` qui calcule xⁿ. _(2 pts)_
2. Écris une version récursive de cette fonction. _(1,5 pt)_
3. Calcule 3⁴ en détaillant la version récursive. _(1,5 pt)_

**Exercice 4 (5 points) — Recherche du minimum.**

1. Écris un algorithme qui détermine la valeur minimale d'un tableau et sa première occurrence. _(2,5 pts)_
2. Déroule l'algorithme sur `[9, 4, 7, 4, 8, 2, 6]`. _(2,5 pts)_

**Exercice 5 (5 points) — Inverser un tableau.**

1. Écris un algorithme qui inverse l'ordre des éléments d'un tableau sans utiliser de tableau auxiliaire. _(3 pts)_
2. Applique l'algorithme au tableau `[1, 2, 3, 4, 5]` en montrant chaque échange. _(2 pts)_

---

## SECTION 2 : STRUCTURES DE DONNÉES

**Exercice 6 (5 points) — Expression parenthésée avec une pile.**

1. Explique comment une pile permet de vérifier l'équilibrage des parenthèses dans une expression. _(1,5 pt)_
2. Écris l'algorithme de vérification pour `( )` et `( ) ( ( ) )`. _(2,5 pts)_
3. Détermine si l'expression `((a+b)*(c-d)` est équilibrée. _(1 pt)_

**Exercice 7 (5 points) — Hauteur et feuilles d'un arbre.**

1. Écris un algorithme récursif calculant la hauteur d'un arbre binaire. _(2 pts)_
2. Écris un algorithme comptant le nombre de feuilles d'un arbre binaire. _(1,5 pt)_
3. Calcule la hauteur et le nombre de feuilles de l'arbre donné ci-dessous :

```
        10
       /  \
      5    20
     / \   /
    3   7 15
```

_(1,5 pt)_

**Exercice 8 (5 points) — Matrice d'adjacence d'un graphe.**

1. Construis la matrice d'adjacence du graphe orienté suivant : A→B, A→C, B→C, C→A. _(2 pts)_
2. Explique comment détecter un cycle dans un graphe orienté à partir de la matrice. _(1,5 pt)_
3. Y a-t-il un cycle dans ce graphe ? Justifie. _(1,5 pt)_

**Exercice 9 (5 points) — File avec deux piles.**

1. Explique comment implémenter une file à l'aide de deux piles. _(2 pts)_
2. Montre par un exemple (enfiler 1, 2, 3 puis défiler) le fonctionnement. _(2 pts)_
3. Analyse la complexité de l'opération défiler dans le pire cas. _(1 pt)_

**Exercice 10 (5 points) — Graphe pondéré et plus court chemin.**

1. Définis un graphe pondéré. _(1 pt)_
2. Applique l'algorithme de Dijkstra au graphe ci-dessous pour trouver le plus court chemin de A à D :

```
A -3- B -1- D
|         /
2       2
|     /
C -4-
```

_(3 pts)_ 3. Donne le coût du chemin minimal trouvé. _(1 pt)_

---

## SECTION 3 : BASES DE DONNÉES

**Exercice 11 (5 points) — Base de données d'une pharmacie.**
On gère des médicaments et leurs fournisseurs.

1. Propose un schéma relationnel (tables `medicaments`, `fournisseurs`) avec clés. _(2,5 pts)_
2. Écris les commandes SQL de création des tables. _(2,5 pts)_

**Exercice 12 (5 points) — Requêtes avec conditions complexes.**
Soit `eleves(id, nom, prenom, classe, moyenne, genre)`.

1. Affiche les élèves de Terminale C OU Terminale D. _(1,5 pt)_
2. Affiche les élèves dont le nom commence par « M ». _(1,5 pt)_
3. Affiche les élèves ayant une moyenne entre 10 et 14 inclus. _(1 pt)_
4. Affiche les élèves qui ne sont pas de la classe « Terminale E ». _(1 pt)_

**Exercice 13 (5 points) — Vues et index.**

1. Définis une vue (VIEW) en SQL et son utilité. _(2 pts)_
2. Crée une vue `bons_eleves` contenant les élèves de moyenne supérieure à 12. _(1,5 pt)_
3. Explique le rôle d'un index et son impact sur les performances. _(1,5 pt)_

**Exercice 14 (5 points) — Transactions.**

1. Définis une transaction en base de données et ses propriétés ACID. _(2,5 pts)_
2. Explique le rôle des commandes `COMMIT` et `ROLLBACK`. _(1,5 pt)_
3. Donne un exemple de situation où une transaction est nécessaire. _(1 pt)_

**Exercice 15 (5 points) — Troisième forme normale (3FN).**

1. Définis la dépendance fonctionnelle. _(1 pt)_
2. Explique les règles de la troisième forme normale (3FN). _(1,5 pt)_
3. La table `Commande(num_commande, client, adresse_client, produit)` est-elle en 3FN ? Si non, décompose-la. _(2,5 pts)_

---

## SECTION 4 : RÉSEAUX ET WEB

**Exercice 16 (5 points) — Modèle OSI et modèle TCP/IP.**

1. Énumère les 7 couches du modèle OSI. _(2 pts)_
2. Compare le modèle OSI au modèle TCP/IP (nombre de couches). _(1,5 pt)_
3. Associe à chaque couche un exemple de protocole. _(1,5 pt)_

**Exercice 17 (5 points) — HTTP et méthodes.**

1. Explique le fonctionnement d'une requête HTTP (requête/réponse). _(1,5 pt)_
2. Cite et explique les méthodes GET et POST, et précise quand les utiliser. _(2 pts)_
3. Différencie les codes de statut 200, 404 et 500. _(1,5 pt)_

**Exercice 18 (5 points) — Création d'un formulaire web.**

1. Crée un formulaire HTML demandant nom, email et mot de passe avec validation. _(2,5 pts)_
2. Explique la différence entre une validation côté client et côté serveur. _(1,5 pt)_
3. Explique le risque d'injection SQL et comment le prévenir. _(1 pt)_

**Exercice 19 (5 points) — Chiffrement.**

1. Explique la différence entre chiffrement symétrique et asymétrique. _(2 pts)_
2. Décris le fonctionnement d'un échange sécurisé avec chiffrement asymétrique et certificat. _(2 pts)_
3. Donne un exemple d'algorithme pour chaque type. _(1 pt)_

**Exercice 20 (5 points) — Éthique et législation numériques.**

1. Explique l'importance de la protection des données personnelles (loi camerounaise sur les données personnelles). _(2 pts)_
2. Définis le droit à l'image, la propriété intellectuelle et le plagiat numérique. _(1,5 pt)_
3. Propose un code de bonne conduite pour un utilisateur d'internet. _(1,5 pt)_
