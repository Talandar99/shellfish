#!/bin/bash

pacman -Sy archlinux-keyring --noconfirm
pacman -Sy archlinux-keyring --noconfirm
sudo pacman -Syu --noconfirm
sudo pacman -S tmux neovim zip unzip tar ripgrep jdk-openjdk python git --noconfirm

mkdir ~/.config
git clone https://github.com/Talandar99/starship_config ~/.config/starship
git clone https://github.com/Talandar99/tmux_config ~/.config/tmux
cat ~/.config/starship/.bashrc > .bashrc  

echo "alias ls='ls --color=always'" >> .bashrc
echo "alias grep='grep --color=always'" >> .bashrc
