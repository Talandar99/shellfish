#!/bin/bash
echo "Building slave prometheus.yml"
LOCAL_MACHINE_IP=$(ip a | grep 192 | cut -d ' ' -f 6 | awk -F/ '{print $1}')

echo "global:" > prometheus.yml
echo "  scrape_interval:     15s " >> prometheus.yml
echo "  evaluation_interval: 15s " >> prometheus.yml
echo "  external_labels:" >> prometheus.yml
echo "      primary: 'slave-prometheus'" >> prometheus.yml
echo "scrape_configs:" >> prometheus.yml
echo "  - job_name: 'node_exporter'" >> prometheus.yml
echo "    static_configs:" >> prometheus.yml
echo "      - targets: ['$LOCAL_MACHINE_IP:9100']" >> prometheus.yml
echo "  - job_name: 'prometheus'" >> prometheus.yml
echo "    static_configs:" >> prometheus.yml
echo "      - targets: ['$LOCAL_MACHINE_IP:9090']" >> prometheus.yml
echo "  - job_name: 'local_slave_federation'" >> prometheus.yml
echo "    scrape_interval: 10s" >> prometheus.yml
echo "    honor_labels: true" >> prometheus.yml
echo "    metrics_path: '/federate'" >> prometheus.yml
echo "    params:" >> prometheus.yml
echo "      'match[]':" >> prometheus.yml
echo "        - '{job=\"node_exporter\"}'" >> prometheus.yml
echo "        - '{job=\"prometheus\"}'" >> prometheus.yml
echo "    static_configs:" >> prometheus.yml
echo "      - targets:" >> prometheus.yml
echo "          - '$LOCAL_MACHINE_IP:9090'" >> prometheus.yml

echo "Pulling container"
docker pull prom/prometheus
