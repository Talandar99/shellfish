#!/bin/bash
echo '-----------------------'
echo 'node-exporter setup and run'
echo '-----------------------'
docker run -d \
  --name node-exporter \
  --network host \
  --pid host \
  --user root \
  --volume /proc:/host/proc:ro \
  --volume /sys:/host/sys:ro \
  --volume /:/rootfs:ro \
  prom/node-exporter \
  --path.procfs=/host/proc \
  --path.sysfs=/host/sys \
  --collector.filesystem.ignored-mount-points="^/(sys|proc|dev|host|etc)($$|/)" \
  --web.listen-address=:9100
echo '-----------------------'
echo 'prometheus yml and template container'
echo '-----------------------'
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
echo '-----------------------'
echo 'build and run prometheus container daemon'
echo '-----------------------'
echo "FROM prom/prometheus" > Dockerfile
echo "COPY prometheus.yml /etc/prometheus/" >>Dockerfile
echo "CMD [ \"--config.file=/etc/prometheus/prometheus.yml\", \"--storage.tsdb.path=/prometheus\" ]">> Dockerfile
docker build -t myprometheus .
docker run -d -p 9090:9090 myprometheus 
echo "prometheus is running on localhost:9090"
echo '-----------------------'
echo 'run graphana'
echo '-----------------------'
docker pull grafana/grafana-oss
docker run -d -p 3000:3000 grafana/grafana-oss
echo "grafana is running on port 3000"
echo 'done :>'
