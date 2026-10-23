#!/bin/bash

zip -r custom_configuration.zip custom_configuration  
# pack client mods, but as mods/ inside the archive so it drops into the instance root
rm -rf .pack
mkdir .pack
cp -al mods_client .pack/mods
(cd .pack && zip -r ../modpack.zip mods)
rm -rf .pack
mv modpack.zip http_server/site/modpack.zip
mv custom_configuration.zip http_server/site/custom_configuration.zip
cd http_server || exit
docker compose up -d
