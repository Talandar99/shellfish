#!/bin/bash
pacman -S tmux rustup starship bash-language-server lua-language-server vscode-html-languageserver
mkdir .config
cd ~/.config
git clone https://github.com/Talandar99/starship_config
git clone https://github.com/Talandar99/nvim_config
git clone https://github.com/Talandar99/tmux_config
mv starship_config starship
mv nvim_config nvim
mv tmux_config tmux
cd ~ 
cat ~/.config/starship/.bashrc >> .bashrc  
