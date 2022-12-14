#!/bin/bash
set -e

echo "Starting Instalation Process"
sudo curl -fsSL https://get.docker.com -o get-docker.sh
echo "It may take a while..."
sudo sh get-docker.sh
USER=$(whoami)
sudo usermod -aG docker $USER
sudo rm get-docker.sh
echo "docker installed. Please reboot your machine to apply changes"
