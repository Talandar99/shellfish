#!/bin/bash

set -e

cd "$(dirname "$0")/.." || exit 1

./scripts/pack_modpack.sh

cd http_server || exit 1
docker compose up -d
