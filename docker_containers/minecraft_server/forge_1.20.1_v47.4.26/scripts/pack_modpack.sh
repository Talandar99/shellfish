#!/bin/bash

set -e

cd "$(dirname "$0")/.." || exit 1

PACK_VERSION=$(sed -n 's/^version:[[:space:]]*"\([^"]*\)".*/\1/p' compose.yml)
if [[ ! "$PACK_VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Invalid or missing version in compose.yml: '$PACK_VERSION'" >&2
    exit 1
fi

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

cp http_server/site/modpack.zip "http_server/site/modpack-${PACK_VERSION}.zip"
cp http_server/site/config.zip "http_server/site/config-${PACK_VERSION}.zip"
cp http_server/site/shaderpacks.zip "http_server/site/shaderpacks-${PACK_VERSION}.zip"

sed -i -E \
    -e "s#(href=\"\./modpack-)[0-9]+\.[0-9]+\.[0-9]+(\.zip\")#\\1${PACK_VERSION}\\2#" \
    -e "s#(href=\"\./config-)[0-9]+\.[0-9]+\.[0-9]+(\.zip\")#\\1${PACK_VERSION}\\2#" \
    -e "s#(href=\"\./shaderpacks-)[0-9]+\.[0-9]+\.[0-9]+(\.zip\")#\\1${PACK_VERSION}\\2#" \
    -e "s#(DOWNLOAD MODS v)[0-9]+\.[0-9]+\.[0-9]+#\\1${PACK_VERSION}#" \
    -e "s#(DOWNLOAD CONFIG v)[0-9]+\.[0-9]+\.[0-9]+#\\1${PACK_VERSION}#" \
    -e "s#(DOWNLOAD SHADERPACKS v)[0-9]+\.[0-9]+\.[0-9]+#\\1${PACK_VERSION}#" \
    http_server/site/index.html
