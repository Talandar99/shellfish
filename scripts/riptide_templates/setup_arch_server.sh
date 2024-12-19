#!/bin/bash

pacman -Sy archlinux-keyring --noconfirm
pacman -Sy archlinux-keyring --noconfirm
pacman -Syu git docker docker-compose neovim zip wget tmux --noconfirm
pacman -Syu git docker docker-compose neovim zip wget tmux --noconfirm
git clone https://github.com/Talandar99/shellfish.git
./shellfish/scripts/arch/docker_setup.sh

reboot
