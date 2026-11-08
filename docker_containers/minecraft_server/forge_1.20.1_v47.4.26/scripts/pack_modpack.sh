#!/bin/bash

set -e

cd "$(dirname "$0")/.." || exit 1

rm -f config.zip shaderpacks.zip modpack.zip
rm -f http_server/site/modpack.zip
rm -f http_server/site/config.zip
rm -f http_server/site/shaderpacks.zip
rm -f http_server/site/custom_configuration.zip

for staging_dir in config shaderpacks mods; do
    if [[ -e "$staging_dir" || -L "$staging_dir" ]]; then
        echo "Staging path already exists; refusing to merge and duplicate files: $staging_dir" >&2
        exit 1
    fi
done

trap 'rm -rf -- config shaderpacks mods' EXIT

cp -r custom_configuration/config config
zip -r config.zip config

cp -r custom_configuration/shaderpacks shaderpacks
zip -r shaderpacks.zip shaderpacks

cp -r mods_client mods
zip -r modpack.zip mods

mv modpack.zip http_server/site/modpack.zip
mv config.zip http_server/site/config.zip
mv shaderpacks.zip http_server/site/shaderpacks.zip
