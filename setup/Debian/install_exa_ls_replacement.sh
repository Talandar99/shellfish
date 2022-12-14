#!/bin/bash
set -e 

sudo apt install exa
cd ~
echo "alias ls=exa" >> .bashrc
source .bashrc
echo "Nala is installed and added as alias in .bashrc"
