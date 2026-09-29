# Terminale — Chimie — Les acides, les bases et les équilibres

**Niveau :** Terminale — Baccalauréat (séries C, D, E, TI)
**Matière :** Chimie

## Objectifs d'apprentissage

À la fin de ce cours, tu dois être capable de :

- Distinguer un acide fort d'un acide faible et une base forte d'une base faible ;
- Écrire une réaction acido-basique et identifier les couples mis en jeu ;
- Calculer le pH d'une solution d'acide fort, de base forte et d'acide faible ;
- Utiliser les constantes $K_a$, $K_e$ et les relations de Henderson-Hasselbalch ;
- Expliquer le fonctionnement des solutions tampons et appliquer le principe de Le Chatelier.

---

## 1. Définitions (théorie de Brønsted)

Un **acide** est une espèce capable de céder un proton $\text{H}^+$. Une **base** est une espèce capable de capter un proton $\text{H}^+$. Un couple acide/base est noté $\text{AH}/\text{A}^-$ et obéit à la demi-équation :

$$\text{AH} \rightleftharpoons \text{A}^- + \text{H}^+$$

**Exemples :** $\text{CH}_3\text{COOH}/\text{CH}_3\text{COO}^-$, $\text{NH}_4^+/\text{NH}_3$, $\text{HCl}/\text{Cl}^-$.

Toute réaction acido-basique fait intervenir deux couples et s'écrit :

$$\text{Acide}_1 + \text{Base}_2 \longrightarrow \text{Base}_1 + \text{Acide}_2$$

**Exemple :** $\text{CH}_3\text{COOH} + \text{NH}_3 \longrightarrow \text{CH}_3\text{COO}^- + \text{NH}_4^+$.

## 2. Acides et bases forts / faibles

- Un **acide fort** (HCl, HBr, HNO₃, H₂SO₄) est totalement dissocié dans l'eau : $[\text{H}_3\text{O}^+] = C$.
- Un **acide faible** (CH₃COOH, HCOOH) est partiellement dissocié : $[\text{H}_3\text{O}^+] < C$.
- Une **base forte** (NaOH, KOH) est totalement dissociée : $[\text{OH}^-] = C$.
- Une **base faible** (NH₃) est partiellement dissociée.

## 3. Le produit ionique de l'eau et le pH

Dans toute solution aqueuse à 25 °C :

$$K_e = [\text{H}_3\text{O}^+][\text{OH}^-] = 10^{-14}$$

Le pH se définit par :

$$\text{pH} = -\log[\text{H}_3\text{O}^+] \qquad \text{et} \qquad [\text{H}_3\text{O}^+] = 10^{-\text{pH}}$$

- Solution acide : pH < 7 (donc $[\text{H}_3\text{O}^+] > [\text{OH}^-]$)
- Solution neutre : pH = 7
- Solution basique : pH > 7

Pour une base forte, $\text{pOH} = -\log[\text{OH}^-]$ et $\text{pH} = 14 - \text{pOH}$.

**Exemple :** Calculer le pH d'une solution d'acide chlorhydrique à $1,0 \times 10^{-2}\ \text{mol/L}$ (acide fort).
$$[\text{H}_3\text{O}^+] = 10^{-2} \Rightarrow \text{pH} = 2$$

**Exemple :** Calculer le pH d'une solution de soude à $1,0 \times 10^{-3}\ \text{mol/L}$ (base forte).
$$[\text{OH}^-] = 10^{-3} \Rightarrow \text{pOH} = 3 \Rightarrow \text{pH} = 14 - 3 = 11$$

## 4. Constante d'acidité $K_a$ et force des acides

Pour le couple $\text{AH}/\text{A}^-$ en solution aqueuse, la constante d'équilibre de la réaction avec l'eau s'appelle **constante d'acidité** :

$$K_a = \frac{[\text{A}^-][\text{H}_3\text{O}^+]}{[\text{AH}]}$$

On définit $\text{p}K_a = -\log K_a$. Plus l'acide est fort, plus $K_a$ est grand et plus $pK_a$ est petit. **Un acide fort a un $pK_a$ très petit ; un acide faible a un $pK_a$ compris entre 0 et 14.**

**Exemple :** L'acide éthanoïque a $K_a = 1,8 \times 10^{-5}$.
$$\text{p}K_a = -\log(1,8 \times 10^{-5}) = 4,8$$

## 5. Relation fondamentale : pH des acides faibles

Pour un acide faible, la relation de Henderson-Hasselbalch relie le pH au $pK_a$ et aux concentrations :

$$\text{pH} = pK_a + \log\frac{[\text{A}^-]}{[\text{AH}]}$$

Lorsque $\text{pH} = pK_a$, on a $[\text{A}^-] = [\text{AH}]$ : les deux espèces sont à égale concentration. C'est le **pouvoir tampon maximal**.

**Exemple :** Calculer le pH si $\frac{[\text{CH}_3\text{COO}^-]}{[\text{CH}_3\text{COOH}]} = 10$ avec $pK_a = 4,8$.
$$\text{pH} = 4,8 + \log 10 = 4,8 + 1 = 5,8$$

## 6. Le taux d'avancement final

Le taux d'avancement final $\tau$ d'une transformation chimique est :

$$\tau = \frac{x_f}{x_{max}}$$

Pour un acide faible de concentration $C$ et de pH connu : $\tau = \frac{[\text{H}_3\text{O}^+]}{C}$. Si $\tau \approx 1$, la transformation est totale (acide fort) ; si $\tau < 1$, elle est limitée (acide faible).

## 7. Les solutions tampons

Une **solution tampon** est une solution dont le pH varie très peu lors de l'addition modérée d'acide ou de base, ou par dilution. Elle est généralement constituée d'un couple acide faible/base conjuguée en concentrations voisines. Son pH est donné par :

$$\text{pH} = pK_a + \log\frac{[\text{base}]}{[\text{acide}]}$$

Elle est utilisée en biologie pour maintenir le pH du sang, des milieux de culture, etc.

## 8. Le principe de Le Chatelier

Lorsqu'on modifie un facteur d'un système à l'équilibre (concentration, pression, température), l'équilibre se déplace dans le sens qui **s'oppose** à cette modification.

**Exemple :** Dans l'équilibre $\text{CH}_3\text{COOH} + \text{H}_2\text{O} \rightleftharpoons \text{CH}_3\text{COO}^- + \text{H}_3\text{O}^+$, l'ajout d'ions $\text{CH}_3\text{COO}^-$ déplace l'équilibre vers la gauche (formation d'acide non dissocié).

## 9. Erreurs à éviter

- Utiliser $\text{pH} = -\log C$ pour un acide faible : cette formule ne vaut que pour les acides forts.
- Oublier que $\text{pH} + \text{pOH} = 14$ à 25 °C.
- Confondre $K_a$ et $pK_a$ (l'un augmente quand l'autre diminue).
- Oublier la conversion de la température ($K_e$ dépend de $T$).
- Confondre pH = pK_a (dominance égale) avec pH neutre.

## 10. Exercices d'entraînement

**Exercice 1 :** Calculer le pH d'une solution d'acide nitrique $\text{HNO}_3$ à $1,0 \times 10^{-3}\ \text{mol/L}$.

**Exercice 2 :** Calculer $[\text{H}_3\text{O}^+]$ et $[\text{OH}^-]$ d'une solution de pH 9.

**Exercice 3 :** Une solution d'acide faible a $c = 0,1\ \text{mol/L}$ et pH = 3,0. Calculer $[\text{H}_3\text{O}^+]$ et le taux d'avancement.

**Exercice 4 :** Le $pK_a$ du couple $\text{NH}_4^+/\text{NH}_3$ est 9,2. Calculer le pH quand $[\text{NH}_3] = 10 \times [\text{NH}_4^+]$.

**Exercice 5 :** Préparer une solution tampon de pH 4,8 avec le couple acide acétique/acétate : quel rapport de concentrations faut-il ?
