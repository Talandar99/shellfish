#!/bin/bash

zip -r modpack.zip mods
zip -r custom_configuration.zip custom_configuration
mv modpack.zip http_server/site/modpack.zip
mv custom_configuration.zip http_server/site/custom_configuration.zip
cd http_server || exit
docker compose up -d
