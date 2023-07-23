#!/bin/bash
zip -r modpack.zip mods
mv modpack.zip http_server/site/modpack.zip
cd http_server || exit
docker compose up -d
