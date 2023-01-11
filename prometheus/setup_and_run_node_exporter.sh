#!/bin/bash
echo "building docker-compose.yml"
echo "services:" >> docker-compose.yml
echo "  node-exporter:" >> docker-compose.yml
echo "    image: prom/node-exporter" >> docker-compose.yml
echo "    container_name: node-exporter" >> docker-compose.yml
echo "    volumes:" >> docker-compose.yml
echo "      - /proc:/host/proc:ro" >> docker-compose.yml
echo "      - /sys:/host/sys:ro" >> docker-compose.yml
echo "      - /:/rootfs:ro" >> docker-compose.yml
echo "    command:" >> docker-compose.yml
echo "      - --path.procfs=/host/proc" >> docker-compose.yml
echo "      - --path.sysfs=/host/sys" >> docker-compose.yml
echo "      - --collector.filesystem.ignored-mount-points=\"^/(sys|proc|dev|host|etc)(\$\$|/)\"" >> docker-compose.yml
echo "    ports:" >> docker-compose.yml
echo "      - 9100:9100" >> docker-compose.yml

echo "composing up node-exporter"
echo '!----------------------------------------------!'
echo 'make sure that you have docker-compose installed'
echo '!----------------------------------------------!'
docker-compose up -d node-exporter
