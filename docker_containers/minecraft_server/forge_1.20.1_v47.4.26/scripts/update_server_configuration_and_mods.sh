#!/bin/bash

mkdir -p data data/world

if [[ ! -d mods_server ]]; then
    echo "mods_server/ does not exist; refusing to replace server mods" >&2
    exit 1
fi

echo "replacing server mods"
rm -rf data/mods
cp -r mods_server data/mods

echo "merging config files"
if [[ -d custom_configuration/config ]]; then
    mkdir -p data/config
    cp -r custom_configuration/config/. data/config/
fi

if [[ -d custom_configuration/defaultconfigs ]]; then
    mkdir -p data/defaultconfigs data/world/serverconfig
    cp -r custom_configuration/defaultconfigs/. data/defaultconfigs/
    cp -r custom_configuration/defaultconfigs/. data/world/serverconfig/
fi

if [[ -d custom_configuration/config/paxi/resourcepacks ]]; then
    mkdir -p data/resourcepacks
    cp -r custom_configuration/config/paxi/resourcepacks/. data/resourcepacks/
fi

if [[ -d custom_configuration/scripts ]]; then
    mkdir -p data/scripts
    cp -r custom_configuration/scripts/. data/scripts/
fi

echo "adding permissions"
chown 1000 -R data
