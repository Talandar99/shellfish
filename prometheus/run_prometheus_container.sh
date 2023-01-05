#!/bin/bash
# "prometheus is running on localhost:9090"
docker run -p 9090:9090 -v prometheus.yml:/etc/prometheus prom/prometheus
