# Fiche — Terminale — Informatique — Structures de données et bases de données

**Niveau :** Terminale — Baccalauréat
**Séries :** TI, C, D, E
**Matière :** Informatique

---

# Fiche de révision — Structures de données et bases de données

## Structures de données

| Structure     | Principe          | Opérations            | Complexité insertion tête |
| ------------- | ----------------- | --------------------- | ------------------------- |
| Pile          | LIFO              | Empiler / Depiler     | O(1)                      |
| File          | FIFO              | Enfiler / Defiler     | O(1)                      |
| Liste chaînée | nœuds + pointeurs | insertion/suppression | O(1)                      |
| Tableau       | accès par indice  | accès direct          | O(n) (insertion)          |

- **Pile** : dernier entré, premier sorti → appels récursifs, annuler, parenthèses.
- **File** : premier entré, premier sorti → imprimerie, BFS, tampons.

## Arbres

- **Racine** : nœud sans parent. **Feuille** : nœud sans enfant. **Hauteur** : nb max d'arêtes racine→feuille.
- **Arbre binaire** : ≤ 2 enfants par nœud.
- **ABR** : gauche < racine < droite.
- **Parcours** : préfixe (R,G,D), infixe (G,R,D), suffixe (G,D,R).

## Graphes

- **Matrice d'adjacence** / **liste d'adjacence**.
- **DFS** (profondeur, pile/récursif), **BFS** (largeur, file).
- **Dijkstra** : plus court chemin dans un graphe pondéré.

## Base de données — vocabulaire

- **Relation/table**, **attribut/champ**, **tuple/enregistrement**, **domaine**, **schéma**.
- **Clé primaire** : identifie chaque ligne (unique, non nulle).
- **Clé étrangère** : référence la clé primaire d'une autre table → **intégrité référentielle**.

## Requêtes SQL essentielles

```sql
-- Interroger
SELECT nom, moyenne FROM eleves
WHERE classe = 'Terminale C' AND moyenne >= 12
ORDER BY moyenne DESC;

-- Insérer
INSERT INTO eleves (nom, classe, moyenne) VALUES ('Amina', 'Terminale C', 14);

-- Modifier
UPDATE eleves SET moyenne = 15 WHERE nom = 'Paul';

-- Supprimer
DELETE FROM eleves WHERE moyenne < 8;

-- Agrégats
SELECT AVG(valeur) FROM notes;

-- Jointure
SELECT e.nom, c.libelle FROM eleves e JOIN classes c ON e.classe_id = c.id;
```

## Clauses SQL

| Clause   | Rôle                  |
| -------- | --------------------- |
| WHERE    | filtre les lignes     |
| ORDER BY | trie (ASC/DESC)       |
| GROUP BY | regroupe              |
| HAVING   | filtre après GROUP BY |
| JOIN     | combine des tables    |

## Normalisation

- **1FN** : attributs atomiques (pas de listes).
- **2FN** : pas de dépendance partielle.
- **3FN** : pas de dépendance transitive.
  But : supprimer redondance et anomalies.

## Autres notions

- **Transaction** : ACID ; `COMMIT` valide, `ROLLBACK` annule.
- **Vue (VIEW)** : table virtuelle.
- **Sauvegarde** : complète / différentielle / incrémentale.
- **Droits** : `GRANT` / `REVOKE`.

## Conseils pour l'épreuve

- Toujours préciser clés primaires et étrangères.
- Tester les requêtes sur un petit jeu de données.
- Pour la normalisation, identifier d'abord les dépendances fonctionnelles.
