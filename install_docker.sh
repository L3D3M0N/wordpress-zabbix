#!/bin/bash

# Met à jour les paquets et installe les dépendances
apt update -y
apt install -y apt-transport-https ca-certificates curl software-properties-common

# Ajoute la clé GPG officielle de Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Configure le dépôt Docker stable
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# Installe Docker
apt update -y
apt install -y docker-ce docker-ce-cli containerd.io

# Installe Docker Compose
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Vérifie l'installation
docker --version
docker-compose --version

echo "Docker et Docker Compose installés avec succès !"
