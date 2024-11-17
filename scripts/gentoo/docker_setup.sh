#!/bin/bash

sudo emerge app-containers/docker app-containers/docker-compose
sudo systemctl enable docker.service
sudo systemctl start docker.service
USER=$(whoami)
sudo usermod -aG docker $USER
echo "docker installed. Please reboot your machine to apply changes"
