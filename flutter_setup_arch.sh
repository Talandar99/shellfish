#!/bin/bash
sudo pacman -S --needed git base-devel
paru -S flutter
sudo groupadd flutterusers
sudo gpasswd -a $(whoami) flutterusers
sudo chown -R :flutterusers /opt/flutter
sudo chmod -R g+w /opt/flutter/
sudo chown -R $(whoami) /opt/flutter
paru -S android-sdk android-sdk-platform-tools android-sdk-build-tools-latest android-platform android-studio
