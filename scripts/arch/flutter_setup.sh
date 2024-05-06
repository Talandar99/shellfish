#!/bin/bash

sudo pacman -Sy --needed git base-devel libtool gcc gcc-libs glibc lib32-glibc cmake ninja --noconfirm
paru -Sy flutter --noconfirm
sudo groupadd flutterusers
sudo gpasswd -a $(whoami) flutterusers
sudo chown -R :flutterusers /opt/flutter
sudo chmod -R g+w /opt/flutter/
sudo chown -R $(whoami) /opt/flutter
echo "export CHROME_EXECUTABLE=brave" >> ~/.bashrc 
echo "Added CHROME_EXECUTABLE=brave"
echo "source ~/.bashrc to apply this change"
