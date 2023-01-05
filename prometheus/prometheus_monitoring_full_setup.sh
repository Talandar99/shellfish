#!/bin/bash
echo 'killing all containers and removing bodies'
docker rm -f $(docker ps -a -q)
echo 'graphana setup and run'
./get_and_start_graphana_container.sh
echo 'node-exporter setup and run'
./setup_and_run_node-exporter.sh
echo 'prometheus setup'
./setup_prometheus_container_and_yml.sh
echo 'run prometheus'
./run_prometheus_container.sh
