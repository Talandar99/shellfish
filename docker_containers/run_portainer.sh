#!/bin/bash
docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer
echo "Portainer is up and running. You can login at"
echo "https://localhost:9000"
