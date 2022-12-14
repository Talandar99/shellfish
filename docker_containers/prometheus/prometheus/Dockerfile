FROM prom/prometheus
COPY prometheus.yml /etc/prometheus/
CMD [ "--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/prometheus" ]
