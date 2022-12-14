#!/bin/bash
echo '-----------------------'
echo 'graphana setup and run'
echo '-----------------------'
cd graphana
./pull_and_start_graphana_container.sh
cd ..
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
./build_yml_and_pull_prometheus_container_master.sh
echo '-----------------------'
echo 'build and run prometheus container daemon'
echo '-----------------------'
./run_prometheus_container_daemon.sh
cd ..
echo '-----------------------'
echo 'done :>'


