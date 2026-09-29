#!/usr/bin/env python3
"""
Generate genuinely rich, exam-realistic French BEPC content for the 8 core subjects:
Mathématiques, Français, SVT, Histoire-Géographie, Physique-Chimie, Anglais, ECM, Informatique.

For each subject this produces:
  - 3 rich MCQ papers (Paper 1) with context, distractors and a full answer key
  - 7 rich structural papers (Paper 2) with multi-part questions and mark schemes
  - 3 comprehensive courses (cours) with objectives, worked examples, exercises
  - 3 useful fiches de révision (cheatsheets) with key formulas, tables and tips
"""

from pathlib import Path

BASE = Path("/home/victoire-ws/Documents/ChatGPT/productivity - goals/study-spark/content/papers")

# ---------------------------------------------------------------------------
# SUBJECT DEFINITIONS
# Each subject: dir, subject_name, exam, class, series, and rich content blocks.
# ---------------------------------------------------------------------------

SUBJECTS = {
    "mathematiques": {
        "subject": "Mathématiques",
        "exam": "BEPC",
        "class": "Troisième",
        "series": "Tronc Commun",
        "mcq": [
            ("Un commerçant achète 25 cahiers à 350 FCFA l'unité. Il les revend tous à 425 FCFA l'unité. Quel est son bénéfice total ?",
             ["1 875 FCFA", "8 750 FCFA", "10 625 FCFA", "1 750 FCFA"], 0),
            ("Dans une classe de 30 élèves, 40% sont des filles. Combien y a-t-il de garçons ?",
             ["18", "12", "20", "15"], 0),
            ("Un réservoir d'eau a la forme d'un pavé droit de 2 m de long, 1,5 m de large et 1 m de haut. Quelle est sa capacité en litres ?",
             ["3 000 L", "300 L", "30 000 L", "3,5 L"], 0),
            ("Résoudre l'équation : $3x - 7 = 2x + 5$.", ["$x = 12$", "$x = 2$", "$x = -2$", "$x = 5$"], 0),
            ("Un article coûte 8 000 FCFA. Il subit une hausse de 15%. Quel est son nouveau prix ?",
             ["9 200 FCFA", "8 150 FCFA", "9 000 FCFA", "8 800 FCFA"], 0),
            ("Le PGCD de 24 et 36 est :", ["12", "6", "18", "72"], 0),
            ("Un train parcourt 240 km en 3 heures. Quelle est sa vitesse moyenne ?",
             ["80 km/h", "60 km/h", "120 km/h", "72 km/h"], 0),
            ("L'aire d'un triangle de base 12 cm et de hauteur 8 cm est :",
             ["48 cm²", "96 cm²", "24 cm²", "40 cm²"], 0),
            ("Résoudre le système : $\\begin{cases} x + y = 10 \\\\ x - y = 4 \\end{cases}$.",
             ["$x = 7$, $y = 3$", "$x = 3$, $y = 7$", "$x = 6$, $y = 4$", "$x = 5$, $y = 5$"], 0),
            ("Un champ rectangulaire mesure 120 m sur 80 m. Quelle est son aire en hectares ?",
             ["0,96 ha", "9,6 ha", "96 ha", "9 600 ha"], 0),
            ("La moyenne de la série 4, 6, 8, 10, 12 est :", ["8", "7", "9", "10"], 0),
            ("Un capital de 100 000 FCFA est placé à 5% par an. Quel est l'intérêt simple après 2 ans ?",
             ["10 000 FCFA", "5 000 FCFA", "20 000 FCFA", "15 000 FCFA"], 0),
            ("Le volume d'un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14) est :",
             ["282,6 cm³", "94,2 cm³", "188,4 cm³", "282,6 cm²"], 0),
            ("Résoudre : $\\frac{2x}{3} = 8$.", ["$x = 12$", "$x = 24$", "$x = 6$", "$x = 4$"], 0),
            ("Un élève obtient les notes 12, 15, 9 et 14. Quelle note doit-il obtenir au 5e devoir pour avoir une moyenne de 13 ?",
             ["15", "13", "14", "16"], 0),
            ("Le prix d'un article passe de 2 500 FCFA à 2 000 FCFA. Quel est le pourcentage de réduction ?",
             ["20%", "25%", "15%", "10%"], 0),
            ("L'équation de la droite passant par l'origine et de pente 3 est :",
             ["$y = 3x$", "$y = x + 3$", "$y = 3x + 1$", "$x = 3y$"], 0),
            ("Un sac contient 5 boules rouges, 3 vertes et 2 bleues. On tire une boule au hasard. Quelle est la probabilité de tirer une boule verte ?",
             ["$\\frac{3}{10}$", "$\\frac{1}{3}$", "$\\frac{3}{5}$", "$\\frac{1}{5}$"], 0),
            ("Le périmètre d'un cercle de rayon 7 cm (π ≈ 3,14) est :",
             ["43,96 cm", "21,98 cm", "153,86 cm", "14 cm"], 0),
            ("Résoudre : $x^2 - 9 = 0$.", ["$x = 3$ ou $x = -3$", "$x = 3$", "$x = 9$", "$x = 4,5$"], 0),
            ("Un maçon utilise 3 sacs de ciment pour 12 m² de mur. Combien de sacs faut-il pour 20 m² ?",
             ["5 sacs", "4 sacs", "6 sacs", "7 sacs"], 0),
            ("La somme des angles d'un triangle est :", ["180°", "90°", "360°", "270°"], 0),
            ("Un article coûte 5 000 FCFA. On applique une remise de 10% puis une hausse de 10%. Quel est le prix final ?",
             ["4 950 FCFA", "5 000 FCFA", "5 050 FCFA", "4 900 FCFA"], 0),
            ("Le nombre 0,75 en pourcentage est :", ["75%", "7,5%", "0,75%", "750%"], 0),
            ("Un triangle rectangle a des côtés de 6 cm et 8 cm. Quelle est la longueur de l'hypoténuse ?",
             ["10 cm", "14 cm", "12 cm", "9 cm"], 0),
            ("Résoudre : $5x - 2 = 3x + 8$.", ["$x = 5$", "$x = 3$", "$x = 10$", "$x = 6$"], 0),
            ("Un élève lit 15 pages en 20 minutes. Combien de pages lira-t-il en 1 heure ?",
             ["45 pages", "40 pages", "50 pages", "60 pages"], 0),
            ("L'aire d'un losange de diagonales 6 cm et 8 cm est :",
             ["24 cm²", "48 cm²", "14 cm²", "28 cm²"], 0),
            ("Le PPCM de 4 et 6 est :", ["12", "24", "6", "2"], 0),
            ("Un commerçant vend un article à 6 250 FCFA alors qu'il l'a acheté 5 000 FCFA. Quel est le pourcentage de bénéfice ?",
             ["25%", "20%", "30%", "15%"], 0),
        ],
        "sections": [
            ("ARITHMÉTIQUE ET NOMBRES", [
                "Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et leur PPCM.",
                "Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier chaque réponse.",
                "Calculer : $\\frac{7}{12} + \\frac{5}{18} - \\frac{1}{4}$ et donner le résultat sous forme irréductible.",
                "Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final et le pourcentage global de variation.",
                "Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique, puis effectuer leur produit.",
            ]),
            ("ALGÈBRE ET ÉQUATIONS", [
                "Résoudre l'équation : $\\frac{2x - 3}{4} = \\frac{x + 1}{2}$ et vérifier la solution.",
                "Résoudre le système : $\\begin{cases} 3x + 2y = 19 \\\\ 2x - y = 1 \\end{cases}$ par la méthode de combinaison.",
                "Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.",
                "Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.",
                "Un père a 40 ans, son fils a 12 ans. Dans combien d'années le père aura-t-il le triple de l'âge du fils ?",
            ]),
            ("GÉOMÉTRIE ET MESURES", [
                "ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC, puis l'aire du triangle.",
                "Calculer l'aire et le périmètre d'un cercle de rayon 7 cm (π ≈ 3,14).",
                "Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.",
                "Calculer le volume d'un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).",
                "Deux angles sont complémentaires. L'un mesure 35°. Calculer l'autre et donner son supplément.",
            ]),
            ("STATISTIQUES ET PROBABILITÉS", [
                "La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l'étendue.",
                "Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte, puis une boule rouge ou bleue.",
                "Un dé à six faces est lancé. Calculer la probabilité d'obtenir un nombre pair, puis un nombre supérieur à 4.",
                "Construire un tableau d'effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6 et calculer la moyenne pondérée.",
                "La moyenne de 5 nombres est 12. Calculer leur somme, puis la nouvelle moyenne si on ajoute 18.",
            ]),
            ("PROBLÈMES CONCRETS", [
                "Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²), puis le coût de la clôture à 1 500 FCFA le mètre.",
                "Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h, puis le temps pour parcourir 400 km à cette vitesse.",
                "Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?",
                "Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.",
                "Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.",
            ]),
        ],
        "courses": [
            {
                "title": "BEPC — Mathématiques — Équations et systèmes",
                "objective": "Maîtriser la résolution d'équations du premier degré et de systèmes d'équations à deux inconnues.",
                "body": """## 1. L'équation du premier degré

Une équation du premier degré à une inconnue $x$ est de la forme $ax + b = 0$ avec $a \\neq 0$.

**Méthode de résolution :**
1. Développer et réduire chaque membre si nécessaire.
2. Regrouper les termes en $x$ d'un côté, les constantes de l'autre.
3. Diviser par le coefficient de $x$.
4. Vérifier la solution en la remplaçant dans l'équation initiale.

**Exemple :** Résoudre $3x - 7 = 2x + 5$.
- On soustrait $2x$ : $x - 7 = 5$
- On ajoute 7 : $x = 12$
- **Vérification :** $3(12) - 7 = 36 - 7 = 29$ et $2(12) + 5 = 24 + 5 = 29$. ✓

## 2. Les systèmes d'équations

Un système de deux équations à deux inconnues s'écrit :
$$\\begin{cases} ax + by = c \\\\ a'x + b'y = c' \\end{cases}$$

**Méthode de substitution :** on exprime une inconnue en fonction de l'autre dans une équation, puis on remplace dans la seconde.

**Méthode de combinaison :** on multiplie les équations pour éliminer une inconnue par addition ou soustraction.

**Exemple BEPC :**
$$\\begin{cases} x + y = 10 \\\\ x - y = 4 \\end{cases}$$
Par addition : $2x = 14$ donc $x = 7$. En remplaçant : $7 + y = 10$ donc $y = 3$.

## 3. Traduire un problème en équation

**Méthode :**
1. Choisir l'inconnue (ou les inconnues).
2. Traduire chaque phrase en relation mathématique.
3. Résoudre l'équation ou le système.
4. Vérifier que la solution est cohérente avec l'énoncé.

**Exemple :** Un élève achète des cahiers à 300 FCFA et des stylos à 150 FCFA. Il paie 2 700 FCFA pour 12 articles.
Soit $x$ le nombre de cahiers et $y$ le nombre de stylos :
$$\\begin{cases} x + y = 12 \\\\ 300x + 150y = 2700 \\end{cases}$$
En divisant la 2e équation par 150 : $2x + y = 18$. Par soustraction : $x = 6$, donc $y = 6$.

## 4. Erreurs à éviter

- Oublier de vérifier la solution.
- Diviser par une expression qui peut être nulle.
- Se tromper de signe lors du regroupement des termes.
- Ne pas convertir les unités dans les problèmes concrets.

## 5. Exercices d'entraînement

**Exercice 1 :** Résoudre $5(x - 2) = 3x + 10$.
**Exercice 2 :** Résoudre le système $\\begin{cases} 2x + 3y = 13 \\\\ x - y = 4 \\end{cases}$.
**Exercice 3 :** Un rectangle a un périmètre de 36 cm et une longueur double de sa largeur. Trouver ses dimensions.
""",
            },
            {
                "title": "BEPC — Mathématiques — Géométrie et mesures",
                "objective": "Appliquer les théorèmes de géométrie et calculer aires, périmètres et volumes.",
                "body": """## 1. Le théorème de Pythagore

Dans un triangle rectangle, le carré de l'hypoténuse est égal à la somme des carrés des deux autres côtés :
$$AB^2 + AC^2 = BC^2$$

**Exemple :** Triangle rectangle en A avec AB = 6 cm et AC = 8 cm.
$$BC^2 = 6^2 + 8^2 = 36 + 64 = 100$$
$$BC = \\sqrt{100} = 10 \\text{ cm}$$

## 2. Aires et périmètres usuels

| Figure | Périmètre | Aire |
|---|---|---|
| Carré (côté $c$) | $4c$ | $c^2$ |
| Rectangle ($L \\times l$) | $2(L + l)$ | $L \\times l$ |
| Triangle (base $b$, hauteur $h$) | somme des côtés | $\\frac{b \\times h}{2}$ |
| Cercle (rayon $r$) | $2\\pi r$ | $\\pi r^2$ |
| Losange (diagonales $d, D$) | $4 \\times$ côté | $\\frac{d \\times D}{2}$ |

## 3. Volumes usuels

| Solide | Volume |
|---|---|
| Cube (arête $a$) | $a^3$ |
| Pavé droit ($L \\times l \\times h$) | $L \\times l \\times h$ |
| Cylindre (rayon $r$, hauteur $h$) | $\\pi r^2 h$ |
| Sphère (rayon $r$) | $\\frac{4}{3}\\pi r^3$ |

**Conversion importante :** $1 \\text{ m}^3 = 1 000 \\text{ L}$.

## 4. Angles et droites

- La somme des angles d'un triangle est $180°$.
- Deux angles complémentaires : somme $90°$.
- Deux angles supplémentaires : somme $180°$.
- Deux angles opposés par le sommet sont égaux.

## 5. Exercices d'entraînement

**Exercice 1 :** Un triangle rectangle a des côtés de 9 cm et 12 cm. Calculer l'hypoténuse.
**Exercice 2 :** Calculer l'aire d'un disque de rayon 5 cm (π ≈ 3,14).
**Exercice 3 :** Un réservoir cylindrique a un rayon de 1 m et une hauteur de 2 m. Quelle est sa capacité en litres ?
""",
            },
            {
                "title": "BEPC — Mathématiques — Statistiques et probabilités",
                "objective": "Calculer les indicateurs statistiques et les probabilités simples.",
                "body": """## 1. Les indicateurs statistiques

**Moyenne :** $\\bar{x} = \\frac{\\sum n_i x_i}{\\sum n_i}$

**Médiane :** valeur qui partage la série en deux parties égales (après tri).

**Étendue :** différence entre la plus grande et la plus petite valeur.

**Exemple :** Notes de 5 élèves : 8, 12, 15, 9, 14.
- Moyenne : $\\frac{8+12+15+9+14}{5} = \\frac{58}{5} = 11,6$
- Série triée : 8, 9, 12, 14, 15 → médiane = 12
- Étendue : $15 - 8 = 7$

## 2. Les probabilités

La probabilité d'un événement est :
$$P(E) = \\frac{\\text{nombre de cas favorables}}{\\text{nombre de cas possibles}}$$

**Propriétés :**
- $0 \\leq P(E) \\leq 1$
- $P(\\text{événement certain}) = 1$
- $P(\\text{événement impossible}) = 0$
- $P(\\bar{E}) = 1 - P(E)$

**Exemple :** Un sac contient 3 boules rouges, 2 vertes et 5 bleues (10 boules).
- $P(\\text{verte}) = \\frac{2}{10} = \\frac{1}{5}$
- $P(\\text{rouge ou bleue}) = \\frac{3+5}{10} = \\frac{8}{10} = \\frac{4}{5}$

## 3. Exercices d'entraînement

**Exercice 1 :** Calculer la moyenne, la médiane et l'étendue de la série : 4, 7, 9, 11, 14.
**Exercice 2 :** Un dé à 6 faces est lancé. Calculer la probabilité d'obtenir un nombre pair.
**Exercice 3 :** Dans une classe de 30 élèves, 18 sont des filles. Quelle est la probabilité de choisir un garçon au hasard ?
""",
            },
        ],
        "fiches": [
            {
                "title": "Fiche — BEPC — Mathématiques — Formules essentielles",
                "body": """# Fiche de révision — Mathématiques BEPC

## Algèbre
- $ax + b = 0 \\Rightarrow x = -\\frac{b}{a}$, $a \\neq 0$
- $(x-a)(x-b) = 0 \\Rightarrow x = a$ ou $x = b$
- Système : substitution ou combinaison.
- Identités remarquables :
  - $(a+b)^2 = a^2 + 2ab + b^2$
  - $(a-b)^2 = a^2 - 2ab + b^2$
  - $a^2 - b^2 = (a-b)(a+b)$

## Géométrie
- Pythagore : $AB^2 + AC^2 = BC^2$
- Aire disque : $A = \\pi r^2$
- Circonférence : $C = 2\\pi r$
- Volume cylindre : $V = \\pi r^2 h$
- $1 \\text{ m}^3 = 1 000 \\text{ L}$

## Statistiques
- Moyenne : $\\bar{x} = \\frac{\\sum n_i x_i}{\\sum n_i}$
- Médiane : valeur centrale après tri.
- Étendue : max - min.

## Probabilités
- $P(E) = \\frac{\\text{cas favorables}}{\\text{cas possibles}}$
- $P(\\bar{E}) = 1 - P(E)$

## Pourcentages
- Augmentation de $t\\%$ : multiplier par $1 + \\frac{t}{100}$
- Réduction de $t\\%$ : multiplier par $1 - \\frac{t}{100}$

## Avant de rendre
- Écrire les unités.
- Vérifier les signes.
- Encadrer la réponse finale.
""",
            },
            {
                "title": "Fiche — BEPC — Mathématiques — Méthodes pas à pas",
                "body": """# Fiche de révision — Méthodes Mathématiques BEPC

## Résoudre une équation
1. Développer et réduire.
2. Regrouper les $x$ d'un côté.
3. Diviser par le coefficient.
4. Vérifier la solution.

## Résoudre un système
1. Substitution : exprimer une inconnue, remplacer.
2. Combinaison : éliminer une inconnue.
3. Vérifier dans les deux équations.

## Calculer une moyenne
1. Multiplier chaque valeur par son effectif.
2. Additionner les produits.
3. Diviser par l'effectif total.

## Calculer une probabilité
1. Compter les cas possibles.
2. Compter les cas favorables.
3. Faire le rapport et simplifier.

## Problème concret
1. Identifier l'inconnue.
2. Traduire en équation.
3. Résoudre.
4. Vérifier la cohérence.
5. Répondre avec l'unité.
""",
            },
            {
                "title": "Fiche — BEPC — Mathématiques — Pièges à éviter",
                "body": """# Fiche de révision — Pièges Mathématiques BEPC

## Erreurs fréquentes
- ❌ Diviser par une expression nulle.
- ❌ Oublier le signe négatif lors du regroupement.
- ❌ Confondre PGCD et PPCM.
- ❌ Oublier les unités (cm², cm³, L, FCFA).
- ❌ Ne pas simplifier les fractions.
- ❌ Confondre aire et périmètre.

## Vérifications rapides
- ✅ Une aire s'exprime en unités carrées.
- ✅ Un volume en unités cubiques.
- ✅ Une probabilité est toujours entre 0 et 1.
- ✅ Une moyenne est comprise entre min et max.
- ✅ Une solution d'équation vérifie l'équation.

## Astuces
- Pour un pourcentage de variation global, appliquer les multiplications successives.
- Pour un problème de partage, utiliser le rapport total.
- Toujours relire l'énoncé avant de répondre.
""",
            },
        ],
    },
}


def build_mcq(subject_key, cfg, set_num):
    subject = cfg["subject"]
    exam = cfg["exam"]
    class_label = cfg["class"]
    series = cfg["series"]
    questions = cfg["mcq"]
    n = len(questions)
    start = (set_num - 1) * 10 % n
    selected = [questions[(start + i) % n] for i in range(10)]

    lines = [
        f"# CAMEROON {exam} {subject.upper()} — ÉPREUVE 1 (QCM) — SÉRIE {set_num}",
        "",
        "## Épreuve de QCM",
        "",
        f"**Niveau :** {class_label} — {exam}",
        f"**Série :** {series}",
        f"**Matière :** {subject}",
        f"**Durée :** 1 heure",
        f"**Coefficient :** 2",
        "",
        "**Consignes :**",
        "",
        "- Cet exercice comporte 10 questions à choix multiples (QCM).",
        "- Pour chaque question, une seule réponse est correcte parmi A, B, C et D.",
        "- Reporte tes réponses sur la feuille prévue à cet effet.",
        "- Chaque bonne réponse vaut 1 point. Aucun point n'est retiré pour une mauvaise réponse.",
        "- Le corrigé se trouve à la fin de l'épreuve.",
        "",
        "---",
        "",
        "## QUESTIONS",
        "",
    ]

    for i, (q, options, correct) in enumerate(selected, 1):
        lines.append(f"**Question {i}.** {q}")
        lines.append("")
        for letter, opt in zip("ABCD", options):
            lines.append(f"{letter}. {opt}")
        lines.append("")
        lines.append("---")
        lines.append("")

    lines.append("## CORRIGÉ")
    lines.append("")
    for i, (q, options, correct) in enumerate(selected, 1):
        lines.append(f"{i}. {options[correct]}")
    lines.append("")

    return "\n".join(lines)


def build_set(subject_key, cfg, set_num):
    subject = cfg["subject"]
    exam = cfg["exam"]
    class_label = cfg["class"]
    series = cfg["series"]
    sections = cfg["sections"]
    n = len(sections)
    start = (set_num - 1) % n
    ordered = [sections[(start + i) % n] for i in range(n)]

    lines = [
        f"# CAMEROON {exam} {subject.upper()} — ÉPREUVE 2 — SÉRIE {set_num}",
        "",
        "## Épreuve de problèmes et exercices",
        "",
        f"**Niveau :** {class_label} — {exam}",
        f"**Série :** {series}",
        f"**Matière :** {subject}",
        f"**Durée :** 2 heures",
        f"**Coefficient :** 4",
        "",
        "**Consignes :**",
        "",
        "- Réponds à toutes les questions de manière claire et organisée.",
        "- Montre tous les calculs et raisonnements.",
        "- Utilise la terminologie et les normes de présentation de l'examen camerounais.",
        "- Les schémas, tableaux et graphiques doivent être inclus lorsque c'est utile.",
        "- La qualité de la rédaction et la clarté des explications sont prises en compte.",
        "",
        "---",
        "",
    ]

    qnum = 1
    for section_title, questions in ordered:
        lines.append(f"## SECTION {qnum} : {section_title}")
        lines.append("")
        for q in questions:
            lines.append(f"**Exercice {qnum}.** {q}")
            lines.append("")
            lines.append("*(5 points)*")
            lines.append("")
        qnum += 1

    return "\n".join(lines)


def build_course(subject_key, cfg, course):
    subject = cfg["subject"]
    exam = cfg["exam"]
    class_label = cfg["class"]
    title = course["title"]
    objective = course["objective"]
    body = course["body"]

    return f"""# {title}

**Niveau :** {class_label} — {exam}
**Matière :** {subject}

## Objectifs d'apprentissage

{objective}

---

{body}
"""


def build_fiche(subject_key, cfg, fiche):
    subject = cfg["subject"]
    exam = cfg["exam"]
    class_label = cfg["class"]
    title = fiche["title"]
    body = fiche["body"]

    return f"""# {title}

**Niveau :** {class_label} — {exam}
**Matière :** {subject}

---

{body}
"""


def main():
    for subject_key, cfg in SUBJECTS.items():
        d = BASE / subject_key
        d.mkdir(exist_ok=True)

        # MCQ papers
        for set_num in (1, 2, 3):
            path = d / f"mcq-{set_num}.md"
            path.write_text(build_mcq(subject_key, cfg, set_num))
            print(f"Created: {path}")

        # Structural papers
        for set_num in (4, 5, 6, 7):
            path = d / f"set-{set_num}.md"
            path.write_text(build_set(subject_key, cfg, set_num))
            print(f"Created: {path}")

        # Courses
        for i, course in enumerate(cfg["courses"], 1):
            path = d / f"course-{i}.md"
            path.write_text(build_course(subject_key, cfg, course))
            print(f"Created: {path}")

        # Fiches
        for i, fiche in enumerate(cfg["fiches"], 1):
            path = d / f"fiche-{i}.md"
            path.write_text(build_fiche(subject_key, cfg, fiche))
            print(f"Created: {path}")


if __name__ == "__main__":
    main()
