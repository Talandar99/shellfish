#!/bin/sh

apt update
apt upgrade -y
apt full-upgrade -y

sed -i 's/bookworm/trixie/g' /etc/apt/sources.list
find /etc/apt/sources.list.d -type f \
  \( -name '*.list' -o -name '*.sources' \) \
  -exec sed -i 's/bookworm/trixie/g' {} +

apt update
apt upgrade --without-new-pkgs -y
apt full-upgrade -y
apt autoremove --purge -y

reboot
