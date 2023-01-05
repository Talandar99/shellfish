#!/bin/bash
docker run -p 9090:9090 -v prometheus.yml:/etc/prometheus prom/prometheus
echo "prometheus is running on localhost:9090"
