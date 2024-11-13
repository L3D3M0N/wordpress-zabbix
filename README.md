# Installation de WordPress et Zabbix via Docker

## Pré-requis
- Proxmox avec une VM minimaliste installée (Debian/Ubuntu).

## Installation

1. Placer le fichier  sur la VM.  (git clone lien ssh)
2. Lancer le script  pour installer Docker et Docker Compose. (sh install_docker.sh)
3. Lancer les conteneurs avec docker-compose up -d

## Services disponibles

- **WordPress** :
- Acces par le port 8080
- **Zabbix** :
- Serveur Zabbix sur le port 10051
- Interface web Zabbix : 8081

## Utilisation

- Accéder à WordPress pour gérer votre site web.
- Accéder à Zabbix pour la surveillance système.


