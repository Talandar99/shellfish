#!/bin/bash
sudo pacman -S docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
USER=$(whoami)
sudo usermod -aG docker $USER
echo "docker installed. Please reboot your machine to apply changes"
