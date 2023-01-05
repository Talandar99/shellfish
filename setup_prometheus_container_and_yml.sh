#!/bin/bash
echo "Building prometheus.yml"
echo " scrape_configs:" > prometheus.yml
echo "   - job_name: 'prometheus'" >> prometheus.yml
echo "     static_configs:" >> prometheus.yml
echo "       - targets: ['localhost:9090']" >> prometheus.yml
echo "   - job_name: 'node'" >> prometheus.yml
echo "     static_configs:" >> prometheus.yml
echo "       - targets: ['localhost:3000']" >> prometheus.yml
echo "Pulling container"
docker pull prom/prometheus
