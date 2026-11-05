```
docker compose down
nvim data/gitea/conf/app.ini
```

in section `[server]`:
```
SSH_DOMAIN = git.talandar.dev
...
SSH_PORT = 6022 <----- this
```
