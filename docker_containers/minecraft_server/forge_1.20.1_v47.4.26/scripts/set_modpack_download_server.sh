#!/bin/bash

rm -f config.zip shaderpacks.zip modpack.zip
rm -f http_server/site/modpack.zip
rm -f http_server/site/config.zip
rm -f http_server/site/shaderpacks.zip
rm -f http_server/site/custom_configuration.zip
ln -s custom_configuration/config config
zip -r config.zip config
rm config
ln -s custom_configuration/shaderpacks shaderpacks
zip -r shaderpacks.zip shaderpacks
rm shaderpacks
ln -s mods_client mods
zip -r modpack.zip mods
rm mods
mv modpack.zip http_server/site/modpack.zip
mv config.zip http_server/site/config.zip
mv shaderpacks.zip http_server/site/shaderpacks.zip
cd http_server || exit
docker compose up -d
