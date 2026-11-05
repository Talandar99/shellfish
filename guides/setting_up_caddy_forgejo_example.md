# Installing Caddy on the remote machine
## about setup
Caddy runs on the Linode server. It listens publicly on ports 80 and 443 and
reverse proxies requests to Forgejo through the local FRP port 3000.

traffic flow is:
Internet -> git.talandar.dev:443 -> Caddy -> 127.0.0.1:3000 -> FRP -> Forgejo

## setting it up
- install it using package manager
- make configuration (in this example my domain is talandar.dev):
```bash
nvim /etc/caddy/Caddyfile
```
```sh
{
    admin "unix//run/caddy/admin.socket"
}

git.talandar.dev {
    reverse_proxy 127.0.0.1:3000
}

import /etc/caddy/conf.d/*
```
- make sure config is fine
```sh
caddy validate --config /etc/caddy/Caddyfile
```
run
```bash
systemctl enable --now caddy
systemctl reload caddy
```
after setting up domain on let's say cloudflare 
```bash
systemctl enable --now frps
systemctl enable --now caddy

```
Testing
```bash
curl -I https://git.talandar.dev
```
Expected response:
HTTP/2 200
