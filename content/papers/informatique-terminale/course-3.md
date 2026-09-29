# Terminale — Informatique — Les réseaux, le web et la cybersécurité

**Niveau :** Terminale — Baccalauréat
**Séries :** TI, C, D, E
**Matière :** Informatique

## Objectifs d'apprentissage

À la fin de ce cours, l'élève doit être capable de :

- Définir un réseau informatique et décrire son fonctionnement ;
- Connaître les modèles OSI et TCP/IP ainsi que les principaux protocoles ;
- Expliquer le modèle client-serveur et les adressages IP/MAC ;
- Créer des pages web en HTML, CSS et JavaScript ;
- Comprendre les bases de la cybersécurité (menaces, protection, chiffrement) ;
- Connaître les enjeux éthiques et légaux du numérique.

---

## 1. Généralités sur les réseaux

Un **réseau informatique** est un ensemble d'équipements (ordinateurs, serveurs, imprimantes) interconnectés qui échangent des données selon des règles communes (protocoles).

**Classification selon l'étendue :**

- **PAN** (personnel) : quelques mètres (Bluetooth) ;
- **LAN** (local) : une pièce, un bâtiment ou un campus ;
- **MAN** (métropolitain) : une ville ;
- **WAN** (étendu) : un pays, un continent, le monde (Internet).

**Équipements d'interconnexion :**

- **Commutateur (switch)** : connecte les machines d'un même réseau local et achemine les trames ;
- **Routeur** : interconnecte plusieurs réseaux et achemine les paquets selon les adresses IP ;
- **Passerelle (gateway)** : interface entre deux réseaux de technologies différentes ;
- **Point d'accès (Wi-Fi)** : relie les équipements sans fil.

## 2. Adressage

**Adresse IP :** adresse logique de la couche réseau.

- **IPv4** : 4 octets = 32 bits, ex. 192.168.1.10.
- **IPv6** : 128 bits, ex. 2001:0db8:85a3::8a2e:0370:7334, créée pour pallier l'épuisement des adresses IPv4.
- Le **masque de sous-réseau** (ex. 255.255.255.0) distingue la partie réseau et la partie hôte.

**Adresse MAC :** adresse physique unique gravée dans la carte réseau (couche liaison), ex. 00:1A:2B:3C:4D:5E.

**NAT :** le Network Address Translation permet à plusieurs machines d'un réseau privé de partager une seule adresse publique.

## 3. Les modèles de référence

### 3.1. Le modèle OSI (7 couches)

1. **Physique** : transmission des bits (câbles, signaux) ;
2. **Liaison** : trames, adresses MAC ;
3. **Réseau** : adressage IP, routage ;
4. **Transport** : TCP/UDP, fiabilité ;
5. **Session** : gestion des sessions ;
6. **Présentation** : codage, chiffrement, compression ;
7. **Application** : services utilisateur (HTTP, FTP, SMTP, DNS).

### 3.2. Le modèle TCP/IP (4 couches)

1. **Accès réseau** ; 2. **Internet** (IP) ; 3. **Transport** (TCP/UDP) ; 4. **Application**.
   Il est plus simple et correspond à l'architecture réelle d'Internet.

## 4. Les principaux protocoles

- **IP** : acheminement des paquets (adressage).
- **TCP** : fiable, orienté connexion, avec accusés de réception et réordonnancement (téléchargement, courrier).
- **UDP** : non fiable mais rapide (vidéo en direct, jeu en ligne).
- **HTTP / HTTPS** : transfert de pages web ; HTTPS chiffre via TLS/SSL.
- **FTP** : transfert de fichiers.
- **SMTP / POP / IMAP** : envoi / réception de courriers.
- **DNS** : conversion des noms de domaine en adresses IP.
- **SSH** : connexion sécurisée à distance.

## 5. Le modèle client-serveur

Dans l'architecture **client-serveur**, un **client** (navigateur, application) envoie une requête à un **serveur** (machine puissante partageant des ressources) qui y répond.

**Exemple avec HTTP :**

1. Le client envoie une requête `GET /index.html` ;
2. Le serveur répond avec le code de statut 200 et la page ;
3. Le navigateur affiche le contenu.

**Codes de statut :** 200 (succès), 404 (ressource introuvable), 500 (erreur serveur).

**Méthodes :** `GET` (récupérer, visible dans l'URL), `POST` (envoyer des données de façon plus discrète).

## 6. Le web : HTML, CSS, JavaScript

- **HTML** : structure du contenu (balises) ;
- **CSS** : présentation et mise en forme (feuilles de style en cascade) ;
- **JavaScript** : interactivité et dynamisme côté client.

**Structure de base :**

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Ma page</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <h1>Bienvenue</h1>
    <p>Ceci est un paragraphe.</p>
    <button onclick="alert('Bonjour !')">Cliquez</button>
  </body>
</html>
```

**CSS :**

```css
h1 {
  color: blue;
  font-size: 24px;
}
p {
  color: gray;
}
```

**Responsive design :** le site s'adapte à l'écran (mobile, tablette, ordinateur) grâce aux **media queries** :

```css
@media (max-width: 600px) {
  body {
    font-size: 14px;
  }
}
```

**Serveur web / hébergement :** Apache et Nginx sont des serveurs web ; l'hébergement peut être mutualisé, dédié ou cloud.

## 7. La cybersécurité

La **cybersécurité** vise à protéger les systèmes, les réseaux et les données contre les attaques. Ses trois piliers (CIA) :

- **Confidentialité** : seules les personnes autorisées accèdent aux données ;
- **Intégrité** : les données ne sont pas modifiées frauduleusement ;
- **Disponibilité** : les services restent accessibles.

### 7.1. Les principales menaces

- **Virus** : programme malveillant qui se propage en infectant des fichiers ;
- **Ver** : se propage seul à travers le réseau ;
- **Cheval de Troie** : logiciel déguisé en programme légitime ;
- **Ransomware** : chiffre les données et demande une rançon ;
- **Phishing (hameçonnage)** : escroquerie incitant à révéler des identifiants en imitant un organisme de confiance ;
- **DDoS** : déni de service distribué, saturation d'un serveur par un flux massif ;
- **Injection SQL** : insertion de code malveillant dans des requêtes SQL.

### 7.2. Les protections

- Mots de passe robustes, authentification à deux facteurs (2FA) ;
- Mises à jour régulières des logiciels ;
- Antivirus et **pare-feu (firewall)** ;
- **Chiffrement** des données et des communications (HTTPS, VPN) ;
- Sauvegardes régulières ;
- Sensibilisation des utilisateurs.

### 7.3. Le chiffrement

- **Symétrique** : une seule clé pour chiffrer et déchiffrer (ex. AES) ;
- **Asymétrique** : une clé publique (chiffrer) et une clé privée (déchiffrer), ex. RSA.

**Hachage :** fonction à sens unique transformant un mot de passe en empreinte (ex. SHA-256). On ne stocke donc jamais les mots de passe en clair.

## 8. Cloud computing et virtualisation

Le **cloud computing** fournit des ressources (calcul, stockage, applications) à la demande via Internet. Ses trois modèles de service :

- **IaaS** : infrastructure (serveurs, stockage) ;
- **PaaS** : plateforme de développement ;
- **SaaS** : logiciels en ligne (ex. Google Drive).

La **virtualisation** permet d'exécuter plusieurs systèmes sur une même machine physique, fondement du cloud. **Avantages :** coûts réduits, évolutivité, accès distant. **Limites :** dépendance à la connexion, souveraineté des données.

## 9. Éthique et législation

- **Protection des données personnelles** : le Cameroun a adopté une loi sur la protection des données à caractère personnel (2010) ; toute collecte doit être légale, loyale et sécurisée ;
- **Droit à l'image** : on ne peut diffuser l'image d'une personne sans son accord ;
- **Propriété intellectuelle** : droits d'auteur sur les œuvres ; le **plagiat** est interdit ;
- **Bonne conduite en ligne** : respecter autrui, vérifier les sources, ne pas propager de fausses informations.

---

## 10. Exercices d'entraînement

**Exercice 1 :** Associer chaque protocole (HTTP, DNS, FTP, SMTP, TCP, UDP) à sa fonction.
**Exercice 2 :** Créer une page HTML complète avec un titre, un paragraphe, une liste et un lien, puis la styliser en CSS.
**Exercice 3 :** Expliquer la différence entre une attaque par phishing et une attaque par ransomware.
**Exercice 4 :** Décrire les étapes d'un échange sécurisé HTTPS entre un navigateur et un serveur.
**Exercice 5 :** Donner trois bonnes pratiques de sécurité pour un réseau de lycée.
