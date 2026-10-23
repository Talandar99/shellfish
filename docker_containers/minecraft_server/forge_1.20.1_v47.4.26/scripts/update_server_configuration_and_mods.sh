#!/bin/bash

echo "removing old configs and mods"
rm -rf data/scripts
rm -rf data/mods
rm -rf data/config
rm -rf data/defaultconfigs
rm -rf data/world/serverconfig

echo "adding new mods"
cp -r mods_server data/mods
echo "adding new config"
cp -r custom_configuration/config data/config
echo "adding new scripts"
cp -r custom_configuration/scripts data/scripts
echo "adding new defaultconfigs"
cp -r custom_configuration/defaultconfigs data/defaultconfigs
cp -r custom_configuration/defaultconfigs data/world/serverconfig
echo "adding permissions"
chown 1000 -R data
