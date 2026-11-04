#!/bin/bash

VERSION=0.61.0
ARCH=amd64
TMP_DIR=$(mktemp -d)

cd "$TMP_DIR"

wget "https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_linux_${ARCH}.tar.gz"

tar -xzf "frp_${VERSION}_linux_${ARCH}.tar.gz"

install -m 0755 "frp_${VERSION}_linux_${ARCH}/frpc" /usr/local/bin/frpc
install -m 0755 "frp_${VERSION}_linux_${ARCH}/frps" /usr/local/bin/frps

mkdir -p /etc/frp

rm -rf "$TMP_DIR"
