# CAMEROON BAC INFORMATIQUE — ÉPREUVE 1 (QCM) — SÉRIE 3

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

**Question 1.** On exécute le programme récursif suivant :

```
Fonction f(n) :
    Si n ≤ 1 Alors Retourner 1
    Sinon Retourner n * f(n - 1)
Fin Fonction
```

Que retourne l'appel `f(5)` ?

A. 120
B. 15
C. 24
D. 720

---

**Question 2.** Dans un tableau trié de 100 000 éléments, quel algorithme de recherche est le plus efficace pour retrouver une valeur ?

A. la recherche dichotomique
B. la recherche séquentielle
C. le tri par insertion
D. le tri à bulles

---

**Question 3.** Un nœud situé au sommet d'un arbre (sans parent) s'appelle :

A. la racine
B. une feuille
C. un nœud interne
D. une arête

---

**Question 4.** La table `matieres(matiere_id, nom, coeff)` possède une clé primaire :

A. `matiere_id`
B. `nom`
C. `coeff`
D. aucune, les clés sont inutiles

---

**Question 5.** Quelle requête SQL insère un nouvel élève nommé « Amina », classe « Terminale C », dans la table `eleves(id, nom, classe)` ?

A. `INSERT INTO eleves (nom, classe) VALUES ('Amina', 'Terminale C');`
B. `ADD INTO eleves VALUES ('Amina', 'Terminale C');`
C. `INSERT eleves (nom, classe) SET ('Amina', 'Terminale C');`
D. `UPDATE eleves SET nom = 'Amina' WHERE classe = 'Terminale C';`

---

**Question 6.** L'adresse MAC d'une carte réseau est :

A. une adresse physique unique attribuée à la carte
B. une adresse logique de la couche réseau
C. un nom de domaine
D. un numéro de port

---

**Question 7.** Le protocole de la couche transport qui ne garantit pas la fiabilité mais offre une transmission rapide (utilisé pour la vidéo en direct) est :

A. UDP
B. TCP
C. HTTP
D. SSH

---

**Question 8.** Quel est le résultat de l'exécution du pseudo-code suivant pour `T = [4, 7, 2, 9]` ?

```
max ← T[0]
Pour i allant de 1 à 3 :
    Si T[i] > max Alors max ← T[i]
Fin Pour
```

A. 9
B. 4
C. 2
D. 7

---

**Question 9.** Un pare-feu (firewall) a pour rôle principal de :

A. filtrer le trafic réseau selon des règles de sécurité
B. chiffrer le disque dur
C. détecter les virus dans les fichiers
D. augmenter la vitesse de la connexion

---

**Question 10.** La normalisation d'une base de données vise principalement à :

A. réduire la redondance et les anomalies des données
B. augmenter le nombre de tables
C. rendre les requêtes plus longues
D. supprimer les clés étrangères

---

## CORRIGÉ

1. A — f(5) = 5 × 4 × 3 × 2 × 1 = 120.
2. A — La recherche dichotomique est logarithmique, très efficace sur tableau trié.
3. A — La racine est le nœud sans parent au sommet de l'arbre.
4. A — `matiere_id` identifie de façon unique chaque matière (clé primaire).
5. A — `INSERT INTO ... VALUES` permet d'ajouter un enregistrement.
6. A — L'adresse MAC est l'adresse physique unique d'une carte réseau.
7. A — UDP est non fiable mais rapide, adapté au streaming.
8. A — La boucle conserve le maximum, soit 9.
9. A — Le pare-feu filtre le trafic selon des règles.
10. A — La normalisation réduit redondances et anomalies.
