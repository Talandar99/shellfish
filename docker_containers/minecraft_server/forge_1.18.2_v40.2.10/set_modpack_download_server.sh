#!/bin/bash
zip -r modpack.zip mods
zip -r custom.zip custom
mv modpack.zip http_server/site/modpack.zip
mv custom.zip http_server/site/custom.zip
cd http_server || exit
docker compose up -d
