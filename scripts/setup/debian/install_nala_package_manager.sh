#!/bin/bash
set -e 

sudo apt install nala
cd ~
echo "alias apt=nala" >> .bashrc
source .bashrc
echo "Nala is installed and added as alias in .bashrc"
