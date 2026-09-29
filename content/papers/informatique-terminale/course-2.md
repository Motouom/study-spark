# Terminale — Informatique — Structures de données et bases de données

**Niveau :** Terminale — Baccalauréat
**Séries :** TI, C, D, E
**Matière :** Informatique

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

- Définir et implémenter les structures de données : piles, files, listes chaînées, arbres, graphes ;
- Connaître les opérations fondamentales de chaque structure et leur complexité ;
- Comprendre le modèle relationnel et le langage SQL ;
- Créer des tables, définir des clés primaires et étrangères ;
- Écrire des requêtes d'interrogation, d'insertion, de modification et de suppression ;
- Expliquer la normalisation et l'intégrité des données.

---

## PARTIE A : LES STRUCTURES DE DONNÉES

## 1. Généralités

Une **structure de données** est une organisation de données permettant de les stocker et de les manipuler efficacement. Le choix de la structure dépend des opérations à effectuer (accès, insertion, suppression, recherche).

## 2. La pile (Stack)

La **pile** est une structure linéaire suivant le principe **LIFO** (Last In, First Out) : le dernier élément ajouté est le premier retiré, comme une pile d'assiettes.

**Opérations :**

- `Empiler(x)` : ajoute x au sommet ;
- `Depiler()` : retire l'élément du sommet ;
- `Sommet()` : consulte sans retirer ;
- `Vide()` : teste si la pile est vide.

**Exemple d'implémentation par tableau :**

```
sommet ← 0
Procédure Empiler(x)
    sommet ← sommet + 1
    P[sommet] ← x
Fin Procédure
Fonction Depiler() : entier
    sommet ← sommet - 1
    Retourner P[sommet + 1]
Fin Fonction
```

**Usages :** gestion des appels récursifs, vérification de l'équilibrage des parenthèses, évaluation d'expressions en notation polonaise inversée, fonction « Annuler » dans un éditeur.

## 3. La file (Queue)

La **file** suit le principe **FIFO** (First In, First Out) : le premier entré est le premier sorti, comme une file d'attente.

**Opérations :** `Enfiler(x)` (ajout en queue), `Defiler()` (retrait en tête), `Vide()`, `Tete()`.

**Usages :** files d'impression, file des tâches du processeur, parcours en largeur d'un graphe, mémoires tampons (buffer).

## 4. La liste chaînée (Linked List)

Une **liste chaînée** est une suite de nœuds reliés par des pointeurs. Chaque **nœud** contient une valeur et un pointeur vers le nœud suivant.

**Avantages :** insertion et suppression efficaces en tête (O(1)) sans décalage. **Inconvénients :** pas d'accès direct par indice (O(n)).

**Insertion en tête :**

```
Procédure InsererTete(L, x)
    nouveau ← Allouer()
    nouveau.valeur ← x
    nouveau.suivant ← L
    L ← nouveau
Fin Procédure
```

Une **double liste chaînée** possède deux pointeurs (précédent et suivant), permettant une navigation bidirectionnelle.

## 5. Les arbres

Un **arbre** est une structure hiérarchique composée de nœuds reliés par des arêtes. Le nœud supérieur est la **racine** ; les nœuds sans enfants sont les **feuilles** ; les autres sont des **nœuds internes**. La **hauteur** est le nombre maximal d'arêtes entre la racine et une feuille.

Un **arbre binaire** est un arbre où chaque nœud a au plus deux enfants (gauche et droite). Un **arbre binaire de recherche (ABR)** vérifie : toutes les valeurs du sous-arbre gauche sont inférieures à la racine, et toutes celles du sous-arbre droit lui sont supérieures.

**Exemple d'ABR :**

```
        50
       /  \
      30   70
     /  \    \
    20   40   80
```

**Parcours :**

- **Préfixe** (racine, gauche, droite) : 50, 30, 20, 40, 70, 80 ;
- **Infixe** (gauche, racine, droite) : 20, 30, 40, 50, 70, 80 ;
- **Suffixe** (gauche, droite, racine) : 20, 40, 30, 80, 70, 50.

**Recherche dans un ABR :** on compare à la racine et on descend à gauche ou à droite. Complexité O(log n) en moyenne.

## 6. Les graphes

Un **graphe** est un ensemble de sommets reliés par des arêtes (non orienté) ou des arcs (orienté). On peut le représenter par une **matrice d'adjacence** ou une **liste d'adjacence**.

**Parcours :**

- **En profondeur (DFS)** : on explore le plus loin possible avant de revenir (utilise une pile ou la récursivité) ;
- **En largeur (BFS)** : on visite les voisins avant d'aller plus loin (utilise une file).

**Graphe pondéré :** chaque arête possède un poids ; l'algorithme de **Dijkstra** trouve le plus court chemin d'un sommet aux autres.

**Tri topologique :** ordre des sommets d'un graphe orienté acyclique respectant les dépendances (prérequis).

---

## PARTIE B : LES BASES DE DONNÉES

## 7. Le modèle relationnel

Une **base de données** est un ensemble structuré de données. Dans le **modèle relationnel**, les données sont organisées en **relations** (tables) composées d'**attributs** (colonnes) et de **tuples** (lignes/enregistrements).

**Terminologie :**

- **Relation / table** : ensemble de lignes ;
- **Attribut / champ** : une colonne ;
- **Tuple / enregistrement** : une ligne ;
- **Domaine** : ensemble des valeurs possibles d'un attribut ;
- **Schéma** : structure (noms des attributs) d'une table.

## 8. Clés primaires et étrangères

- **Clé primaire (PRIMARY KEY)** : attribut (ou ensemble) identifiant de façon unique chaque enregistrement. Elle ne peut être ni nulle ni dupliquée.
- **Clé étrangère (FOREIGN KEY)** : attribut qui référence la clé primaire d'une autre table, garantissant l'**intégrité référentielle** (on ne peut pas référencer un enregistrement inexistant).

**Exemple :** table `eleves(id, nom, classe_id)` : `id` est clé primaire ; `classe_id` est clé étrangère référençant `classes(id)`.

**Création :**

```sql
CREATE TABLE classes (
    id INTEGER PRIMARY KEY,
    libelle TEXT NOT NULL
);
CREATE TABLE eleves (
    id INTEGER PRIMARY KEY,
    nom TEXT NOT NULL,
    classe_id INTEGER,
    FOREIGN KEY (classe_id) REFERENCES classes(id)
);
```

## 9. Le langage SQL

Le **SQL** (Structured Query Language) permet d'interroger et de manipuler les bases de données relationnelles.

### 9.1. Interrogation (SELECT)

```sql
SELECT nom, moyenne FROM eleves
WHERE classe = 'Terminale C' AND moyenne >= 12
ORDER BY moyenne DESC;
```

- `WHERE` : filtre les lignes ; `ORDER BY` : trie ; `GROUP BY` : regroupe ; `HAVING` : filtre après regroupement.

### 9.2. Insertion

```sql
INSERT INTO eleves (nom, classe, moyenne) VALUES ('Amina', 'Terminale C', 14);
```

### 9.3. Modification

```sql
UPDATE eleves SET moyenne = 15 WHERE nom = 'Paul';
```

### 9.4. Suppression

```sql
DELETE FROM eleves WHERE moyenne < 8;
```

### 9.5. Fonctions d'agrégation

`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`.

### 9.6. Jointure (JOIN)

```sql
SELECT e.nom, c.libelle
FROM eleves e
JOIN classes c ON e.classe_id = c.id;
```

## 10. La normalisation

La **normalisation** vise à éliminer la redondance et les anomalies (d'insertion, de modification, de suppression) par une organisation rigoureuse des tables.

- **1FN** : chaque attribut contient une seule valeur atomique (pas de listes répétées).
- **2FN** : être en 1FN et chaque attribut non clé dépend de la totalité de la clé primaire composée.
- **3FN** : être en 2FN et aucun attribut non clé ne dépend transitivement de la clé.

**Exemple :** la table `Inscription(eleve, cours1, cours2, cours3)` n'est pas en 1FN ; on la remplace par `Inscription(eleve, cours)` avec une ligne par cours.

## 11. Autres notions importantes

- **Transaction** : suite d'opérations indivisible aux propriétés **ACID** (Atomicité, Cohérence, Isolation, Durabilité) ; `COMMIT` valide, `ROLLBACK` annule.
- **Vue (VIEW)** : table virtuelle issue d'une requête, simplifiant l'accès aux données.
- **Sauvegarde** : complète, différentielle ou incrémentale.
- **Droits d'accès** : `GRANT` / `REVOKE` pour limiter les privilèges.

---

## 12. Exercices d'entraînement

**Exercice 1 :** Implémenter une file à l'aide d'un tableau et ses opérations `Enfiler` / `Defiler`.
**Exercice 2 :** Dessiner l'ABR obtenu en insérant 15, 6, 18, 3, 7, 17, 20 puis donner le parcours infixe.
**Exercice 3 :** Écrire la requête SQL affichant la moyenne par classe des élèves.
**Exercice 4 :** Normaliser la table `Commande(numero, client, produit, qte)` si nécessaire.
**Exercice 5 :** Appliquer l'algorithme de Dijkstra à un petit graphe de 4 sommets.
