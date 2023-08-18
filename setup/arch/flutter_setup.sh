#!/bin/bash
sudo pacman -Sy --needed git base-devel
paru -Sy flutter --noconfirm
sudo groupadd flutterusers
sudo gpasswd -a $(whoami) flutterusers
sudo chown -R :flutterusers /opt/flutter
sudo chmod -R g+w /opt/flutter/
sudo chown -R $(whoami) /opt/flutter
paru -Sy android-sdk android-sdk-platform-tools android-sdk-build-tools-latest android-platform android-studio --noconfirm
