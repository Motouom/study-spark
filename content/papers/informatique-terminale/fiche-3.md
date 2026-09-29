# Fiche — Terminale — Informatique — Réseaux, web et cybersécurité

**Niveau :** Terminale — Baccalauréat
**Séries :** TI, C, D, E
**Matière :** Informatique

---

# Fiche de révision — Réseaux, web et cybersécurité

## Types de réseaux

| Sigle | Étendue       | Exemple            |
| ----- | ------------- | ------------------ |
| PAN   | personnel     | Bluetooth          |
| LAN   | local         | réseau d'un lycée  |
| MAN   | métropolitain | réseau d'une ville |
| WAN   | étendu        | Internet           |

## Adressage

- **IPv4** : 32 bits (4 octets), ex. 192.168.1.10.
- **IPv6** : 128 bits.
- **Masque** : sépare réseau et hôte.
- **MAC** : adresse physique unique de la carte réseau.

## Modèle OSI (7 couches)

1. Physique → 2. Liaison → 3. Réseau → 4. Transport → 5. Session → 6. Présentation → 7. Application.
   **TCP/IP (4 couches)** : Accès réseau, Internet, Transport, Application.

## Protocoles

| Protocole  | Rôle                        |
| ---------- | --------------------------- |
| IP         | acheminement des paquets    |
| TCP        | fiable, orienté connexion   |
| UDP        | rapide, non fiable          |
| HTTP/HTTPS | pages web (HTTPS = chiffré) |
| FTP        | transfert de fichiers       |
| SMTP       | envoi de courrier           |
| DNS        | nom de domaine → IP         |
| SSH        | connexion sécurisée         |

## Client-serveur

- **Client** envoie une requête → **serveur** répond.
- Codes : **200** succès, **404** introuvable, **500** erreur serveur.
- **GET** (visible) / **POST** (données envoyées).

## Web

- **HTML** = structure ; **CSS** = présentation ; **JavaScript** = interactivité.
- **Responsive design** : s'adapte à l'écran (media queries).
- Serveurs : Apache, Nginx. Hébergement : mutualisé, dédié, cloud.

## Cybersécurité — les 3 piliers (CIA)

- **Confidentialité** (accès autorisé), **Intégrité** (non-modification), **Disponibilité** (services accessibles).

## Menaces

| Menace          | Définition                        |
| --------------- | --------------------------------- |
| Virus           | infecte des fichiers              |
| Ver             | se propage seul via réseau        |
| Cheval de Troie | logiciel déguisé                  |
| Ransomware      | chiffre et demande rançon         |
| Phishing        | usurpation pour voler des données |
| DDoS            | saturation d'un serveur           |
| Injection SQL   | code malveillant dans SQL         |

## Protections

- Mots de passe robustes + 2FA, mises à jour, antivirus, pare-feu.
- Chiffrement (HTTPS, VPN), sauvegardes, sensibilisation.

## Chiffrement

- **Symétrique** : 1 clé (AES).
- **Asymétrique** : clé publique + privée (RSA).
- **Hachage** : sens unique (SHA-256) → ne pas stocker les mots de passe en clair.

## Cloud

- **IaaS** (infrastructure), **PaaS** (plateforme), **SaaS** (logiciels).
- Avantages : coûts, évolutivité, accès distant. Limites : connexion, souveraineté des données.

## Éthique et loi

- Protection des données personnelles (loi camerounaise de 2010).
- Droit à l'image, propriété intellectuelle, interdiction du plagiat.

## Conseils pour l'épreuve

- Associer chaque protocole à sa couche et son rôle.
- Savoir décrire un échange HTTPS chiffré.
- Citer les trois piliers CIA et les menaces avec définition.
- Pour le HTML, écrire une structure complète et valide.
