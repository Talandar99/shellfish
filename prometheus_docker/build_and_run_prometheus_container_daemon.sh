#!/bin/bash
echo "FROM prom/prometheus" > Dockerfile
echo "COPY prometheus.yml /etc/prometheus/" >> Dockerfile
echo "CMD [ \"--config.file=/etc/prometheus/prometheus.yml\", \"--storage.tsdb.path=/prometheus\" ]" >> Dockerfile
docker build -t myprometheus .
docker run -d -p 9090:9090 myprometheus 
echo "prometheus is running on localhost:9090"
