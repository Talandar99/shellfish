#!/bin/bash

DIR="./beszel_data"
ENV_FILE="./.env"

mkdir -p "$DIR"

PRIVATE_KEY="$DIR/id_ed25519"
PUBLIC_KEY="$DIR/id_ed25519.pub"

if [[ -f "$PRIVATE_KEY" || -f "$PUBLIC_KEY" ]]; then
  echo "Keys already exist in $DIR, exiting."
  exit 0
fi

ssh-keygen -t ed25519 -f "$PRIVATE_KEY" -N "" -C "beszel-agent-key"
chmod 600 "$PRIVATE_KEY"

echo "Keys generated in $DIR"
cat "$PUBLIC_KEY"

# Tworzenie pliku .env z kluczem publicznym, z zachowaniem całej linii jako jedna zmienna
PUB_KEY_CONTENT=$(cat "$PUBLIC_KEY")

# Escape znaków specjalnych (opcjonalnie, jeśli np. w kluczu mogą być znaki problematyczne)
# PUB_KEY_CONTENT=$(cat "$PUBLIC_KEY" | sed 's/"/\\"/g')

echo "BESZEL_KEY=\"$PUB_KEY_CONTENT\"" > "$ENV_FILE"

echo ".env file created with BESZEL_KEY variable"
