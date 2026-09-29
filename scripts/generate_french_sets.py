#!/usr/bin/env python3
"""
Generate additional French structural sets (4-7) for francophone subjects
to match English parity (7 sets per subject).
"""

from pathlib import Path

BASE = Path("/home/victoire-ws/Documents/ChatGPT/productivity - goals/study-spark/content/papers")

# subject dir -> (subject name, level, class, series, exam, sections)
# sections: list of (section_title, list of questions)
SUBJECTS = {
    "mathematiques": {
        "subject": "Mathématiques", "level": "Ordinary Level (Collège)",
        "class": "Troisième", "series": "Tronc Commun", "exam": "BEPC",
        "sections": [
            ("ARITHMÉTIQUE ET NOMBRES", [
                "Décomposer 360 et 504 en produits de facteurs premiers, puis calculer leur PGCD et PPCM.",
                "Un nombre est divisible par 3 et par 5. Donner trois exemples possibles et justifier.",
                "Calculer : $\\frac{7}{12} + \\frac{5}{18} - \\frac{1}{4}$ et donner le résultat sous forme irréductible.",
                "Un article coûte 8 000 FCFA. Il subit une hausse de 15% puis une baisse de 10%. Calculer le prix final.",
                "Écrire 0,000 000 25 et 4 500 000 000 en notation scientifique.",
            ]),
            ("ALGÈBRE ET ÉQUATIONS", [
                "Résoudre l'équation : $\\frac{2x - 3}{4} = \\frac{x + 1}{2}$.",
                "Résoudre le système : $\\begin{cases} 3x + 2y = 19 \\\\ 2x - y = 1 \\end{cases}$.",
                "Factoriser : $9x^2 - 16$ puis résoudre $9x^2 - 16 = 0$.",
                "Développer et réduire : $(2x + 3)^2 - (x - 1)(x + 1)$.",
                "Un père a 40 ans, son fils a 12 ans. Dans combien d'années le père aura-t-il le triple de l'âge du fils ?",
            ]),
            ("GÉOMÉTRIE", [
                "ABC est un triangle rectangle en A avec AB = 6 cm et AC = 8 cm. Calculer BC.",
                "Calculer l'aire et le périmètre d'un cercle de rayon 7 cm (π ≈ 3,14).",
                "Un triangle a pour angles 40° et 75°. Calculer le troisième angle et préciser la nature du triangle.",
                "Calculer le volume d'un cylindre de rayon 3 cm et de hauteur 10 cm (π ≈ 3,14).",
                "Deux angles sont complémentaires. L'un mesure 35°. Calculer l'autre.",
            ]),
            ("STATISTIQUES ET PROBABILITÉS", [
                "La série suivante donne les notes de 10 élèves : 8, 12, 15, 9, 14, 11, 13, 10, 16, 12. Calculer la moyenne, la médiane et l'étendue.",
                "Dans un sac, il y a 3 boules rouges, 2 vertes et 5 bleues. On tire une boule au hasard. Calculer la probabilité de tirer une boule verte.",
                "Un dé à six faces est lancé. Calculer la probabilité d'obtenir un nombre pair.",
                "Construire un tableau d'effectifs pour la série : 2, 3, 3, 4, 4, 4, 5, 5, 6.",
                "La moyenne de 5 nombres est 12. Calculer leur somme.",
            ]),
            ("PROBLÈMES CONCRETS", [
                "Un champ rectangulaire mesure 120 m sur 80 m. Calculer son aire en hectares (1 ha = 10 000 m²).",
                "Une voiture parcourt 240 km en 3 heures. Calculer sa vitesse moyenne en km/h.",
                "Un réservoir contient 1 500 litres. On le remplit à raison de 60 litres par minute. Combien de temps faut-il pour le remplir ?",
                "Un commerçant achète un article à 5 000 FCFA et le revend à 6 250 FCFA. Calculer le pourcentage de bénéfice.",
                "Partager 24 000 FCFA entre trois personnes dans le rapport 2 : 3 : 5.",
            ]),
        ],
    },
    "physique-chimie": {
        "subject": "Physique-Chimie", "level": "Ordinary Level (Collège)",
        "class": "Troisième", "series": "Tronc Commun", "exam": "BEPC",
        "sections": [
            ("ÉLECTRICITÉ", [
                "Un circuit comporte une pile de 4,5 V et une résistance de 15 Ω. Calculer l'intensité du courant.",
                "Une lampe de puissance 60 W fonctionne sous 220 V. Calculer l'intensité du courant qui la traverse.",
                "Deux résistances de 10 Ω et 20 Ω sont montées en série. Calculer la résistance équivalente.",
                "Calculer l'énergie consommée par un appareil de 2 000 W fonctionnant pendant 3 heures (en kWh).",
                "Un ampèremètre indique 0,5 A dans un circuit. Combien de coulombs traversent le circuit en 2 minutes ?",
            ]),
            ("MÉCANIQUE", [
                "Calculer le poids d'un corps de masse 25 kg (g = 10 N/kg).",
                "Un objet de masse 2 kg se déplace à 3 m/s. Calculer son énergie cinétique.",
                "Calculer l'énergie potentielle d'un objet de 5 kg placé à 4 m de hauteur (g = 10 N/kg).",
                "Une force de 20 N est appliquée sur une surface de 4 m². Calculer la pression.",
                "Un mobile parcourt 120 m en 15 s. Calculer sa vitesse moyenne.",
            ]),
            ("CHIMIE", [
                "Équilibrer l'équation : $H_2 + O_2 \\to H_2O$.",
                "Calculer la masse molaire de l'eau (H₂O) : H = 1 g/mol, O = 16 g/mol.",
                "Une solution a un pH de 3. Est-elle acide, basique ou neutre ? Justifier.",
                "Quelle est la formule chimique du dioxyde de carbone ? Donner sa composition.",
                "Distinguer un corps pur d'un mélange en donnant un exemple de chacun.",
            ]),
            ("OPTIQUE ET THERMIQUE", [
                "Un rayon lumineux arrive sur un miroir plan avec un angle d'incidence de 30°. Calculer l'angle de réflexion.",
                "Convertir 25°C en kelvins.",
                "Calculer la quantité de chaleur pour élever 2 kg d'eau de 20°C à 60°C (c = 4 180 J/kg·K).",
                "Expliquer la différence entre la fusion et la vaporisation.",
                "Un objet est placé devant une lentille convergente. Décrire l'image obtenue selon la position de l'objet.",
            ]),
        ],
    },
    "svt": {
        "subject": "Sciences de la Vie et de la Terre", "level": "Ordinary Level (Collège)",
        "class": "Troisième", "series": "Tronc Commun", "exam": "BEPC",
        "sections": [
            ("BIOLOGIE CELLULAIRE ET GÉNÉTIQUE", [
                "Décrire la structure d'une cellule végétale et d'une cellule animale en précisant leurs différences.",
                "Expliquer le rôle de la photosynthèse et citer les conditions nécessaires.",
                "Décrire le mécanisme de la fécondation chez l'homme.",
                "Expliquer la différence entre mitose et méiose.",
                "Un homme de groupe sanguin A et une femme de groupe O : quels groupes sanguins peuvent avoir leurs enfants ?",
            ]),
            ("PHYSIOLOGIE HUMAINE", [
                "Décrire le trajet du sang dans la circulation sanguine.",
                "Expliquer le mécanisme de la respiration chez l'homme.",
                "Décrire le rôle du rein dans l'élimination des déchets.",
                "Expliquer le fonctionnement du système nerveux lors d'un réflexe.",
                "Décrire le rôle des hormones dans la régulation de la glycémie.",
            ]),
            ("ÉCOLOGIE ET ENVIRONNEMENT", [
                "Définir un écosystème et donner ses composantes.",
                "Construire une chaîne alimentaire à partir de : herbe, lion, gazelle, décomposeurs.",
                "Expliquer les conséquences de la déforestation sur l'environnement.",
                "Décrire le cycle de l'eau.",
                "Expliquer l'importance de la biodiversité et les menaces qui pèsent sur elle.",
            ]),
            ("GÉOLOGIE", [
                "Distinguer les trois types de roches et donner un exemple de chacun.",
                "Expliquer la formation d'un volcan.",
                "Décrire le mécanisme d'un séisme et citer ses effets.",
                "Expliquer la théorie de la tectonique des plaques.",
                "Décrire le processus de formation des fossiles et leur intérêt.",
            ]),
        ],
    },
    "histoire-geographie": {
        "subject": "Histoire-Géographie", "level": "Ordinary Level (Collège)",
        "class": "Troisième", "series": "Tronc Commun", "exam": "BEPC",
        "sections": [
            ("HISTOIRE DU CAMEROUN", [
                "Raconter les étapes de la colonisation du Cameroun par l'Allemagne.",
                "Expliquer le partage du Cameroun entre la France et l'Angleterre après la Première Guerre mondiale.",
                "Décrire le processus d'indépendance du Cameroun en 1960.",
                "Expliquer la réunification du Cameroun en 1961.",
                "Décrire l'évolution politique du Cameroun de 1960 à nos jours.",
            ]),
            ("HISTOIRE GÉNÉRALE", [
                "Expliquer les causes et conséquences de la Première Guerre mondiale.",
                "Expliquer les causes et conséquences de la Deuxième Guerre mondiale.",
                "Décrire la traite négrière transatlantique et ses conséquences.",
                "Expliquer le processus de décolonisation de l'Afrique.",
                "Décrire la création et le rôle de l'ONU.",
            ]),
            ("GÉOGRAPHIE PHYSIQUE", [
                "Décrire le relief du Cameroun.",
                "Expliquer les différents climats du Cameroun.",
                "Décrire les principaux fleuves du Cameroun.",
                "Expliquer la répartition de la végétation au Cameroun.",
                "Décrire les ressources naturelles du Cameroun.",
            ]),
            ("GÉOGRAPHIE HUMAINE ET ÉCONOMIQUE", [
                "Expliquer la répartition de la population au Cameroun.",
                "Décrire les principales activités économiques du Cameroun.",
                "Expliquer les causes et conséquences de l'exode rural.",
                "Décrire les principaux produits d'exportation du Cameroun.",
                "Expliquer les problèmes de développement au Cameroun et les solutions.",
            ]),
        ],
    },
    "francais": {
        "subject": "Français", "level": "Ordinary Level (Collège)",
        "class": "Troisième", "series": "Tronc Commun", "exam": "BEPC",
        "sections": [
            ("GRAMMAIRE", [
                "Analyser la phrase : « Quand le soleil se lève, les oiseaux chantent dans les arbres. »",
                "Identifier la nature et la fonction des mots soulignés dans une phrase donnée.",
                "Transformer une phrase active en phrase passive et inversement.",
                "Distinguer les propositions subordonnées relatives et complétives dans un texte.",
                "Accorder correctement les participes passés dans des phrases données.",
            ]),
            ("CONJUGAISON", [
                "Conjuguer le verbe « venir » à tous les temps simples de l'indicatif.",
                "Conjuguer le verbe « prendre » au passé composé et au plus-que-parfait.",
                "Mettre un texte au futur simple.",
                "Conjuguer le verbe « faire » au conditionnel présent et au subjonctif présent.",
                "Expliquer l'emploi du subjonctif après « il faut que ».",
            ]),
            ("VOCABULAIRE ET ORTHOGRAPHE", [
                "Donner le sens des mots : « éphémère », « lucide », « précaire » et les employer dans des phrases.",
                "Former le féminin et le pluriel de : « acteur », « cheval », « beau », « fou ».",
                "Corriger les fautes d'orthographe dans un texte donné.",
                "Distinguer les homophones : « a/à », « et/est », « ou/où », « son/sont ».",
                "Trouver les synonymes et antonymes de : « courageux », « rapide », « riche ».",
            ]),
            ("COMPRÉHENSION ET EXPRESSION", [
                "Lire un texte et répondre à des questions de compréhension.",
                "Résumer un texte en respectant les règles du résumé.",
                "Rédiger un paragraphe argumentatif sur un sujet donné.",
                "Identifier les figures de style dans un texte poétique.",
                "Rédiger une lettre administrative selon les règles de présentation.",
            ]),
        ],
    },
    "anglais-fr": {
        "subject": "Anglais", "level": "Ordinary Level (Collège)",
        "class": "Troisième", "series": "Tronc Commun", "exam": "BEPC",
        "sections": [
            ("GRAMMAR", [
                "Put the verbs in brackets into the correct tense: « She ___ (go) to school every day. »",
                "Rewrite the sentences in the negative and interrogative forms.",
                "Complete with the correct preposition: in, on, at, for, since.",
                "Change the sentences from active to passive voice.",
                "Use the correct form of the comparative and superlative of adjectives.",
            ]),
            ("VOCABULARY", [
                "Give the opposite of: happy, big, hot, fast, expensive.",
                "Match the words with their definitions.",
                "Complete the sentences with the correct word from the list.",
                "Find the synonyms of: beautiful, clever, difficult, important.",
                "Use the correct word: much/many, some/any, a/an.",
            ]),
            ("COMPREHENSION", [
                "Read the passage and answer the questions.",
                "Answer true or false and justify your answers.",
                "Find words in the text that mean the same as given definitions.",
                "Answer questions about the main idea of the passage.",
                "Complete the sentences based on the text.",
            ]),
            ("WRITING", [
                "Write a short paragraph about your daily routine.",
                "Write a letter to your friend describing your school.",
                "Write a dialogue between two friends about their weekend plans.",
                "Write a short composition about your favourite subject.",
                "Write an invitation card for a birthday party.",
            ]),
        ],
    },
    "ecm": {
        "subject": "Éducation à la Citoyenneté et à la Morale", "level": "Ordinary Level (Collège)",
        "class": "Troisième", "series": "Tronc Commun", "exam": "BEPC",
        "sections": [
            ("INSTITUTIONS ET DÉMOCRATIE", [
                "Décrire les institutions de la République du Cameroun.",
                "Expliquer le fonctionnement de la démocratie au Cameroun.",
                "Décrire le rôle du président, du gouvernement et du parlement.",
                "Expliquer l'importance de la séparation des pouvoirs.",
                "Décrire le processus électoral au Cameroun.",
            ]),
            ("DROITS ET DEVOIRS", [
                "Énumérer les droits fondamentaux du citoyen camerounais.",
                "Expliquer les devoirs du citoyen envers la patrie.",
                "Décrire les droits de l'enfant et leur protection.",
                "Expliquer l'importance du respect des lois.",
                "Décrire le rôle de la justice dans la société.",
            ]),
            ("CITOYENNETÉ ET MORALE", [
                "Expliquer les valeurs de la citoyenneté : tolérance, solidarité, respect.",
                "Décrire les comportements civiques au quotidien.",
                "Expliquer l'importance de la lutte contre la corruption.",
                "Décrire les dangers de la violence et du harcèlement.",
                "Expliquer le rôle de l'éducation civique dans la société.",
            ]),
            ("ENVIRONNEMENT ET DÉVELOPPEMENT", [
                "Expliquer l'importance de la protection de l'environnement.",
                "Décrire les gestes écologiques au quotidien.",
                "Expliquer le concept de développement durable.",
                "Décrire les problèmes environnementaux du Cameroun.",
                "Proposer des solutions pour protéger l'environnement.",
            ]),
        ],
    },
    "informatique-fr": {
        "subject": "Informatique", "level": "Ordinary Level (Collège)",
        "class": "Troisième", "series": "Tronc Commun", "exam": "BEPC",
        "sections": [
            ("MATÉRIEL INFORMATIQUE", [
                "Décrire les composants d'un ordinateur.",
                "Distinguer les périphériques d'entrée et de sortie.",
                "Expliquer le rôle du processeur et de la mémoire.",
                "Décrire les différents types de mémoire.",
                "Expliquer le fonctionnement d'un disque dur.",
            ]),
            ("LOGICIELS", [
                "Distinguer les logiciels système et les logiciels d'application.",
                "Décrire le rôle du système d'exploitation.",
                "Expliquer l'utilisation d'un traitement de texte.",
                "Décrire l'utilisation d'un tableur.",
                "Expliquer la différence entre logiciel libre et logiciel propriétaire.",
            ]),
            ("RÉSEAUX ET INTERNET", [
                "Décrire le fonctionnement d'un réseau informatique.",
                "Expliquer le rôle d'Internet.",
                "Décrire les dangers d'Internet et les précautions à prendre.",
                "Expliquer le fonctionnement de l'e-mail.",
                "Décrire les bonnes pratiques de sécurité en ligne.",
            ]),
            ("ALGORITHMIQUE ET PROGRAMMATION", [
                "Définir un algorithme et donner un exemple.",
                "Écrire un algorithme pour calculer la somme de deux nombres.",
                "Expliquer la notion de variable en programmation.",
                "Décrire les structures conditionnelles (si... alors... sinon).",
                "Écrire un algorithme pour déterminer si un nombre est pair ou impair.",
            ]),
        ],
    },
    "comptabilite": {
        "subject": "Comptabilité", "level": "Advanced Level (Lycée)",
        "class": "Première", "series": "Comptabilité", "exam": "Probatoire",
        "sections": [
            ("COMPTABILITÉ GÉNÉRALE", [
                "Présenter le bilan d'une entreprise à partir des données fournies.",
                "Enregistrer les opérations courantes dans le journal.",
                "Établir le compte de résultat d'une entreprise.",
                "Calculer la TVA à payer à partir des ventes et achats.",
                "Établir la balance des comptes.",
            ]),
            ("ANALYSE COMPTABLE", [
                "Calculer le fonds de roulement, le besoin en fonds de roulement et la trésorerie nette.",
                "Analyser la structure financière d'une entreprise.",
                "Calculer les ratios de liquidité et de solvabilité.",
                "Interpréter le résultat d'une entreprise.",
                "Calculer le seuil de rentabilité.",
            ]),
            ("GESTION ET COÛTS", [
                "Calculer le coût d'achat, le coût de production et le coût de revient.",
                "Établir un tableau de répartition des charges.",
                "Calculer la marge brute et la marge nette.",
                "Analyser les écarts entre prévisions et réalisations.",
                "Calculer le prix de vente à partir du coût de revient et de la marge.",
            ]),
            ("DOCUMENTS COMMERCIAUX", [
                "Établir une facture avec remise, rabais et escompte.",
                "Établir un avoir.",
                "Remplir un chèque et un bordereau de versement.",
                "Établir un relevé de compte.",
                "Expliquer le rôle des documents commerciaux dans la comptabilité.",
            ]),
        ],
    },
    "economie-fr": {
        "subject": "Économie", "level": "Advanced Level (Lycée)",
        "class": "Première", "series": "Économie", "exam": "Probatoire",
        "sections": [
            ("CONCEPTS ÉCONOMIQUES", [
                "Expliquer le problème économique fondamental de la rareté.",
                "Distinguer les biens économiques et les biens libres.",
                "Expliquer les notions de besoin, de bien et de service.",
                "Décrire les agents économiques et leurs fonctions.",
                "Expliquer le circuit économique.",
            ]),
            ("PRODUCTION ET MARCHÉ", [
                "Expliquer les facteurs de production.",
                "Décrire le fonctionnement du marché.",
                "Expliquer la loi de l'offre et de la demande.",
                "Distinguer les différentes structures de marché.",
                "Expliquer la notion de productivité.",
            ]),
            ("MONNAIE ET FINANCEMENT", [
                "Expliquer les fonctions de la monnaie.",
                "Distinguer les formes de la monnaie.",
                "Expliquer le rôle de la banque centrale.",
                "Décrire le rôle des banques commerciales.",
                "Expliquer le mécanisme du crédit.",
            ]),
            ("ÉTAT ET POLITIQUES ÉCONOMIQUES", [
                "Expliquer le rôle économique de l'État.",
                "Décrire le budget de l'État.",
                "Expliquer la politique budgétaire.",
                "Expliquer la politique monétaire.",
                "Analyser les effets de l'inflation sur l'économie.",
            ]),
        ],
    },
    "philosophie": {
        "subject": "Philosophie", "level": "Advanced Level (Lycée)",
        "class": "Terminale", "series": "Philosophie", "exam": "Baccalauréat",
        "sections": [
            ("LA CONSCIENCE ET L'INCONSCIENT", [
                "Dissertation : « La conscience fait-elle de l'homme un être libre ? »",
                "Expliquer la différence entre la conscience et l'inconscient selon Freud.",
                "Commenter : « Je pense donc je suis » de Descartes.",
                "Dissertation : « Peut-on connaître autrui ? »",
                "Expliquer le rôle de la mémoire dans la constitution du sujet.",
            ]),
            ("LA RAISON ET LE VRAI", [
                "Dissertation : « La vérité dépend-elle de nous ? »",
                "Distinguer la vérité de l'opinion.",
                "Expliquer la méthode cartésienne du doute.",
                "Dissertation : « La science nous libère-t-elle ? »",
                "Commenter : « Connais-toi toi-même » de Socrate.",
            ]),
            ("LA MORALE ET LA LIBERTÉ", [
                "Dissertation : « Être libre, est-ce faire ce que l'on veut ? »",
                "Expliquer la notion de devoir moral.",
                "Dissertation : « La liberté et la responsabilité sont-elles liées ? »",
                "Commenter l'impératif catégorique de Kant.",
                "Dissertation : « Le bonheur est-il le but de la vie ? »",
            ]),
            ("LA SOCIÉTÉ ET L'ÉTAT", [
                "Dissertation : « Pourquoi obéir aux lois ? »",
                "Expliquer la théorie du contrat social de Rousseau.",
                "Dissertation : « L'État garantit-il la justice ? »",
                "Expliquer la notion de souveraineté.",
                "Dissertation : « La démocratie est-elle le meilleur régime ? »",
            ]),
        ],
    },
    "ses": {
        "subject": "Sciences Économiques et Sociales", "level": "Advanced Level (Lycée)",
        "class": "Terminale", "series": "Sciences Économiques et Sociales", "exam": "Baccalauréat",
        "sections": [
            ("SOCIALISATION ET CULTURE", [
                "Expliquer le processus de socialisation et ses instances.",
                "Analyser la socialisation différenciée selon le genre et la classe sociale.",
                "Expliquer la notion de capital culturel selon Bourdieu.",
                "Dissertation : « La socialisation détermine-t-elle entièrement l'individu ? »",
                "Analyser le rôle des médias dans la socialisation.",
            ]),
            ("STRATIFICATION ET MOBILITÉ", [
                "Expliquer les différentes formes de stratification sociale.",
                "Analyser la mobilité sociale et ses déterminants.",
                "Expliquer la notion de classes sociales selon Marx et Weber.",
                "Dissertation : « L'école favorise-t-elle la mobilité sociale ? »",
                "Analyser les inégalités sociales et leurs causes.",
            ]),
            ("ÉCONOMIE ET EMPLOI", [
                "Expliquer les causes et conséquences du chômage.",
                "Analyser les formes de l'emploi et la précarité.",
                "Expliquer la notion de productivité et ses effets sur l'emploi.",
                "Dissertation : « La croissance économique crée-t-elle des emplois ? »",
                "Analyser les politiques de l'emploi.",
            ]),
            ("ÉTAT, PROTECTION SOCIALE ET MONDIALISATION", [
                "Expliquer le rôle de l'État-providence.",
                "Analyser le système de protection sociale.",
                "Expliquer les effets de la mondialisation sur les économies.",
                "Dissertation : « La mondialisation profite-t-elle à tous ? »",
                "Analyser les inégalités de développement dans le monde.",
            ]),
        ],
    },
    "mathematiques-appliquees": {
        "subject": "Mathématiques Appliquées", "level": "Advanced Level (Lycée)",
        "class": "Terminale", "series": "Mathématiques Appliquées", "exam": "Baccalauréat",
        "sections": [
            ("ANALYSE", [
                "Étudier les variations de la fonction $f(x) = x^3 - 3x + 2$.",
                "Calculer $\\lim_{x \\to +\\infty} \\frac{2x^2 + 3x - 1}{x^2 + 1}$.",
                "Calculer l'intégrale $\\int_0^1 (3x^2 + 2x) \\, dx$.",
                "Déterminer l'équation de la tangente à la courbe de $f(x) = \\ln(x)$ au point d'abscisse 1.",
                "Étudier la fonction $f(x) = \\frac{x}{x + 1}$ et tracer sa courbe.",
            ]),
            ("ALGÈBRE ET SUITES", [
                "Résoudre l'équation $x^2 - 5x + 6 = 0$.",
                "Étudier la suite $u_n = 2n + 3$ : nature, raison, terme général.",
                "Étudier la suite $u_n = 3 \\times 2^n$ : nature, raison, somme des n premiers termes.",
                "Résoudre le système : $\\begin{cases} x + 2y = 5 \\\\ 3x - y = 1 \\end{cases}$.",
                "Factoriser et résoudre : $x^3 - 4x = 0$.",
            ]),
            ("PROBABILITÉS ET STATISTIQUES", [
                "Une urne contient 5 boules rouges et 3 bleues. On tire 2 boules sans remise. Calculer la probabilité d'obtenir 2 boules rouges.",
                "Une variable aléatoire X suit la loi binomiale B(10 ; 0,4). Calculer son espérance et sa variance.",
                "Calculer la moyenne, la variance et l'écart-type de la série : 2, 4, 6, 8, 10.",
                "Deux événements A et B sont indépendants avec P(A) = 0,3 et P(B) = 0,5. Calculer P(A ∩ B).",
                "Une loi normale a pour moyenne 50 et écart-type 10. Calculer P(40 ≤ X ≤ 60).",
            ]),
            ("APPLICATIONS", [
                "Un capital de 100 000 FCFA est placé à 5% par an. Calculer la valeur acquise après 3 ans (intérêts composés).",
                "Un emprunt de 500 000 FCFA est remboursé par annuités constantes sur 5 ans à 6%. Calculer l'annuité.",
                "Modéliser une situation économique par une fonction et l'optimiser.",
                "Calculer le coût marginal à partir d'une fonction de coût total.",
                "Résoudre un problème d'optimisation : maximiser une aire sous contrainte.",
            ]),
        ],
    },
}


def build_set(subject_key, cfg, set_num):
    subject = cfg["subject"]
    level = cfg["level"]
    class_label = cfg["class"]
    series = cfg["series"]
    exam = cfg["exam"]
    sections = cfg["sections"]

    # Rotate sections for each set
    n = len(sections)
    start = (set_num - 1) % n
    ordered = [sections[(start + i) % n] for i in range(n)]

    lines = [
        f"# CAMEROON {exam} {subject.upper()} SET {set_num}",
        "",
        f"## Structural Question Bank - Set {set_num}",
        "",
        f"**Level:** {level}",
        f"**Class:** {class_label}",
        f"**Series:** {series}",
        f"**Subject:** {subject}",
        f"**Exam:** {exam}",
        "",
        "**Instructions:**",
        "",
        "- Réponds à toutes les questions de manière claire et organisée.",
        "- Montre tous les calculs et raisonnements lorsque c'est nécessaire.",
        "- Utilise la terminologie et les normes de présentation de l'examen camerounais.",
        "- Les schémas, tableaux et graphiques doivent être inclus lorsque c'est utile.",
        "",
        "---",
        "",
    ]

    qnum = 1
    for section_title, questions in ordered:
        lines.append(f"## SECTION {qnum}: {section_title}")
        lines.append("")
        for q in questions:
            lines.append(f"**Q{qnum}.** {q}")
            lines.append("")
        qnum += 1

    return "\n".join(lines)


def main():
    for subject_key, cfg in SUBJECTS.items():
        d = BASE / subject_key
        d.mkdir(exist_ok=True)
        for set_num in (4, 5, 6, 7):
            path = d / f"set-{set_num}.md"
            if path.exists():
                print(f"Exists: {path}")
                continue
            content = build_set(subject_key, cfg, set_num)
            path.write_text(content)
            print(f"Created: {path}")


if __name__ == "__main__":
    main()
