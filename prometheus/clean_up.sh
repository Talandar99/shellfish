#!/bin/bash
rm docker-compose.yml prometheus.yml Dockerfile
docker rm -f $(docker ps -a -q)
