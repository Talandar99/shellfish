## Public access (FRP over Linode)
- frpc: local machine, `/etc/frp/frpc.toml`, service `frpc`
- proxies: forgejo-web 3000, forgejo-ssh 222→6022, **minecraft 25565→25565**
- apply config: `sudo systemctl restart frpc`; logs: `journalctl -u frpc -f`
- Caddy on Linode: `git.talandar.dev` → `127.0.0.1:3000`; Minecraft bypasses Caddy (raw TCP)
add this on client (not remote host)
```toml
[[proxies]]
name = "minecraft"
type = "tcp"
localIP = "127.0.0.1"
localPort = 25565
remotePort = 25565

```
## fixing dns issues
- Linux: `sudo resolvectl flush-caches`
- macOS: `sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder`

## Running commands
```bash
docker compose exec mc rcon-cli "list"
```
