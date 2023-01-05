#!/bin/bash
docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    portainer/portainer-ee:latest
echo "Portainer is up and running. You can login at"
echo "https://localhost:9443"
