#!/bin/bash
cd ~
mkdir .config
cd ~/.config
git clone https://github.com/Talandar99/starship_config
git clone https://github.com/Talandar99/nvim_shrimp_config
git clone https://github.com/Talandar99/tmux_config
mv starship_config starship
mv nvim_shrimp_config nvim
mv tmux_config tmux
cd ~ 
cat ~/.config/starship/.bashrc > .bashrc  
echo "Don't forget to Check if you installed tmux, neovim and starship"
