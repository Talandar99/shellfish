#!/bin/bash

DIR="./beszel_data"

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
at "$PUBLIC_KEY"
