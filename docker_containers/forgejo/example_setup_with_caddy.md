Traffic flow:
Internet -> Linode:443 -> Caddy -> Linode:3000 -> FRP -> Debian -> Forgejo

| Protocol | Port | Purpose |
|---|---:|---|
| TCP | 22 | SSH access to the Linode server |
| TCP | 80 | HTTP and Let's Encrypt |
| TCP | 443 | HTTPS through Caddy |
| TCP | 7000 | FRP control connection |
| TCP | 6022 | Forgejo Git SSH |
