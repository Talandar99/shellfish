#!/bin/bash
echo "Building prometheus.yml"
IP=$(ip a | grep 192 | cut -d ' ' -f 6 | awk -F/ '{print $1}')
echo "scrape_configs:" > prometheus.yml
echo "  - job_name: 'prometheus'" >> prometheus.yml
echo "    static_configs:" >> prometheus.yml
echo "      - targets: ['$IP:9090']" >> prometheus.yml
echo "  - job_name: 'node_exporter'" >> prometheus.yml
echo "    static_configs:" >> prometheus.yml
echo "      - targets: ['$IP:9100']" >> prometheus.yml

echo "Pulling container"
docker pull prom/prometheus
