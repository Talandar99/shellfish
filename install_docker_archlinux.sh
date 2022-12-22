#!/bin/bash
USER=whoami
sudo pacman -S docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo usermod -aG docker $USER
echo "docker installed. reboot your machine"
