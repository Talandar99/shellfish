# install frp on your machine and remote machine with this script
- `nvim install_frp.sh`

```bash
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
```

- `chmod +x install_frp.sh`
- `sudo ./install_frp.sh`

# on remote machine (linode in this case)
- generate token with `openssl rand -hex 32`
- `mkdir -p /etc/frp`
- `nvim /etc/frp/frps.toml`
paste:
```toml
bindPort = 7000

auth.method = "token"
auth.token = "HERE_PLACE_YOUR_GENERATED_TOKEN"
```
- Make a service:
```bash
nvim /etc/systemd/system/frps.service
```
```sh
[Unit]
After=network.target

[Service]
ExecStart=/usr/local/bin/frps -c /etc/frp/frps.toml
Restart=always

[Install]
WantedBy=multi-user.target
```
- Run service:
```
sudo systemctl daemon-reload
sudo systemctl enable --now frps
sudo systemctl status frps
```
# on local machine 
- make sure `/usr/local/bin/frpc` exist
- make new config:
```bash
mkdir -p /etc/frp
nvim /etc/frp/frpc.toml
```
paste:
```toml
serverAddr = "REMOTE_MACHINE_IP"
serverPort = 7000

auth.method = "token"
auth.token = "HERE_PLACE_SAME_GENERATED_TOKEN_AS_ON_REMOTE_MACHINE"

[[proxies]]
name = "forgejo-web"
type = "tcp"
localIP = "127.0.0.1"
localPort = 3000
remotePort = 3000

[[proxies]]
name = "forgejo-ssh"
type = "tcp"
localIP = "127.0.0.1"
localPort = 222
remotePort = 6022
```
- Create systemd service: 
```bash
nvim /etc/systemd/system/frpc.service
```
```sh
[Unit]
After=network-online.target
Wants=network-online.target

[Service]
ExecStart=/usr/local/bin/frpc -c /etc/frp/frpc.toml
Restart=always

[Install]
WantedBy=multi-user.target
```
- Run service:
```
sudo systemctl daemon-reload
sudo systemctl enable --now frpc
sudo systemctl status frpc
```
- check logs
```
journalctl -u frpc -f
```
ACCESS:
Forgejo WWW: http://REMOTE_MACHINE_IP:3000
Forgejo SSH: ssh://git@REMOTE_MACHINE_IP:6022



