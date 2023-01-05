#!/bin/bash
echo '-----------------------'
echo 'killing all containers '
echo '-----------------------'
docker rm -f $(docker ps -a -q)
echo '-----------------------'
echo 'graphana setup and run'
echo '-----------------------'
./get_and_start_graphana_container.sh
echo '-----------------------'
echo 'node-exporter setup and run'
echo '-----------------------'
./setup_and_run_node-exporter.sh
echo '-----------------------'
echo 'prometheus setup'
echo '-----------------------'
./setup_prometheus_container_and_yml.sh
echo '-----------------------'
echo 'run prometheus'
echo '-----------------------'
./run_prometheus_container.sh
echo '-----------------------'
echo 'cleaning up'
echo '-----------------------'
rm docker-compose.yml prometheus.yml
echo 'done :>'
