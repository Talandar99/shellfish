#!/bin/bash
echo '-----------------------'
echo 'node-exporter setup and run'
echo '-----------------------'
cd node_exporter
./compose.sh
cd ..
echo '-----------------------'
echo 'prometheus yml and template container'
echo '-----------------------'
cd prometheus
./build_yml_and_pull_prometheus_container_slave.sh
echo '-----------------------'
echo 'build and run prometheus container daemon'
echo '-----------------------'
./run_prometheus_container_daemon.sh
cd ..
echo '-----------------------'
echo 'done :>'
