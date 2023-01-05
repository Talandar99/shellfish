#!/bin/bash
echo "Bro I need your ip address"
echo "Enter your IP:"
read IP
echo "Building prometheus.yml"
echo "scrape_configs:" > prometheus.yml
echo "  - job_name: 'prometheus'" >> prometheus.yml
echo "    static_configs:" >> prometheus.yml
echo "      - targets: ['$IP:9090']" >> prometheus.yml
echo "  - job_name: 'node'" >> prometheus.yml
echo "    static_configs:" >> prometheus.yml
echo "      - targets: ['$IP:3000']" >> prometheus.yml
echo "  - job_name: 'node_exporter'" >> prometheus.yml
echo "    static_configs:" >> prometheus.yml
echo "      - targets: ['$IP:9100']" >> prometheus.yml
echo "Pulling container"
docker pull prom/prometheus
