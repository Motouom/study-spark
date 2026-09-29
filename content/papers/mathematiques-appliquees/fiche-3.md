# Fiche — Terminale — Mathématiques Appliquées — Probabilités, statistiques et finance

**Niveau :** Terminale — Baccalauréat
**Séries :** ACC / CG / FIG / SES
**Matière :** Mathématiques Appliquées

---

# Fiche de révision — Probabilités, statistiques et applications financières

## 1. Probabilités

- $P(E) = \frac{\text{cas favorables}}{\text{cas possibles}}$ (équiprobabilité)
- $P(\bar{E}) = 1 - P(E)$
- $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
- Incompatibles : $P(A \cup B) = P(A) + P(B)$
- Indépendants : $P(A \cap B) = P(A) \times P(B)$
- Conditionnelle : $P(A \mid B) = \frac{P(A \cap B)}{P(B)}$
- Probabilités totales : $P(B) = \sum P(A_i) P(B \mid A_i)$

## 2. Loi binomiale $B(n ; p)$

- $P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}$
- $E(X) = np$
- $V(X) = np(1-p)$
- Utiliser si : $n$ tirages indépendants, 2 issues, probabilité $p$ constante.

## 3. Loi normale $N(\mu ; \sigma)$

- Centrer et réduire : $Z = \frac{X - \mu}{\sigma}$
- Règle empirique :
  - $P(\mu \pm \sigma) \approx 0,68$
  - $P(\mu \pm 2\sigma) \approx 0,95$
  - $P(\mu \pm 3\sigma) \approx 0,997$
- Symétrie : $P(X \leq \mu) = 0,5$.

## 4. Statistiques descriptives

- Moyenne : $\bar{x} = \frac{\sum n_i x_i}{\sum n_i}$
- Variance : $V = \frac{\sum (x_i - \bar{x})^2}{n}$
- Écart-type : $\sigma = \sqrt{V}$
- Médiane : valeur centrale après tri (moyenne des deux centrales si effectif pair).
- Étendue : $x_{\max} - x_{\min}$ ; écart interquartile : $Q_3 - Q_1$.

## 5. Applications financières

- **Intérêts simples :** $I = C \times t \times n$ ; $V = C(1 + tn)$
- **Intérêts composés :** $V_n = C(1+i)^n$
- **Annuité constante :** $a = C \times \frac{i}{1-(1+i)^{-n}}$
- **Capital restant dû après $k$ annuités :** $C_k = a \times \frac{1-(1+i)^{-(n-k)}}{i}$
- **Valeur actuelle :** $V_0 = \frac{V_n}{(1+i)^n}$
- **Taux équivalent mensuel :** $i_m = (1+i)^{1/12} - 1$

## 6. Tableau récapitulatif des formules clés

| Notion                    | Formule                              |
| ------------------------- | ------------------------------------ |
| Valeur acquise (composés) | $V_n = C(1+i)^n$                     |
| Annuité                   | $a = C \cdot \frac{i}{1-(1+i)^{-n}}$ |
| Espérance binomiale       | $E = np$                             |
| Variance binomiale        | $V = np(1-p)$                        |
| Variance statistique      | $V = \frac{\sum (x_i-\bar{x})^2}{n}$ |
| Écart-type                | $\sigma = \sqrt{V}$                  |
| Centrage-réduction        | $Z = \frac{X-\mu}{\sigma}$           |

## 7. Réflexes à l'épreuve

1. Vérifier si le tirage est avec ou sans remise (loi binomiale ou non).
2. Toujours construire l'arbre pour les probabilités conditionnelles.
3. Distinguer taux proportionnel ($i/12$) et taux équivalent ($(1+i)^{1/12}-1$).
4. Ne pas oublier la racine carrée pour l'écart-type.
5. Bien identifier $n$, $p$, $\mu$, $\sigma$ avant d'appliquer une formule.
