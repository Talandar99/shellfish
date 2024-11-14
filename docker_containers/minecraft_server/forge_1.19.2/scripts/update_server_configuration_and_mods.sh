#!/bin/bash

echo "removing old configs and mods"
rm -rf data/scripts
rm -rf data/mods
rm -rf data/config
rm -rf data/defaultconfigs
rm -rf data/world/serverconfig

echo "adding new mods"
cp -r mods data/mods
echo "adding new config"
cp -r custom_configuration/config data/config
echo "adding new scripts"
cp -r custom_configuration/scripts data/scripts
echo "adding new defaultconfigs"
cp -r custom_configuration/defaultconfigs data/defaultconfigs
cp -r custom_configuration/defaultconfigs data/world/serverconfig
echo "adding permissions"
chown 1000 -R data
echo "removing client only mods"
rm -rf data/mods/oculus-mc1.19.2-1.6.9.jar
rm -rf data/mods/reforgium-1.0.12a.jar
rm -rf data/mods/EnhancedBlockEntities-Reforged-1.19.2-0.8.0.jar
rm -rf data/mods/seasonhud-forge-1.19.2-1.11.0.jar
