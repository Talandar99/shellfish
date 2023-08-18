#!/bin/bash

sudo pacman -S git rustup --noconfirm
rustup default stable
sudo pacman -S --needed base-devel --noconfirm
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
sudo rm -r paru
