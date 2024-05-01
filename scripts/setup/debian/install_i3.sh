##!/bin/bash

echo "make sure you installed nala package manager first"

echo "installing xorg"
sudo nala install xinit xorg
echo "installing core dependancies"
sudo nala install xcompmgr xclip feh rofi playerctl flameshot dunst i3blocks fonts-firacode neovim
echo "installing python and pulseaudio"
sudo nala install python3-pip python3 pulseaudio
echo "installing pamixer from source"
sudo nala update
sudo nala install build-essential libpulse-dev libcxxopts-dev
git clone https://github.com/cdemoulins/pamixer.git
cd pamixer
meson setup build
meson compile -C build
meson install -C build
