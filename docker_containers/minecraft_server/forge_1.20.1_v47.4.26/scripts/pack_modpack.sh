#!/bin/bash

set -e

cd "$(dirname "$0")/.." || exit 1

rm -f config.zip shaderpacks.zip modpack.zip
rm -f http_server/site/modpack.zip
rm -f http_server/site/config.zip
rm -f http_server/site/shaderpacks.zip
rm -f http_server/site/custom_configuration.zip

trap 'rm -f config shaderpacks mods' EXIT

ln -s custom_configuration/config config
zip -r config.zip config

ln -s custom_configuration/shaderpacks shaderpacks
zip -r shaderpacks.zip shaderpacks

ln -s mods_client mods
zip -r modpack.zip mods

mv modpack.zip http_server/site/modpack.zip
mv config.zip http_server/site/config.zip
mv shaderpacks.zip http_server/site/shaderpacks.zip
