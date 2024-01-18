#!/bin/bash
echo '-----------------------'
echo 'run graphana'
echo '-----------------------'
docker pull grafana/grafana-oss
docker run -d -p 3000:3000 grafana/grafana-oss
echo "grafana is running on port 3000"
