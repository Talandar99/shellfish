#!/bin/bash
echo '-----------------------'
echo 'graphana setup and run'
echo '-----------------------'
./pull_and_start_graphana_container.sh
echo '-----------------------'
echo 'node-exporter setup and run'
echo '-----------------------'
./setup_and_run_node_exporter.sh
echo '-----------------------'
echo 'prometheus yml and template container'
echo '-----------------------'
./build_yml_and_pull_prometheus_container_master.sh
echo '-----------------------'
echo 'build and run prometheus container daemon'
echo '-----------------------'
./build_and_run_prometheus_container_daemon.sh
echo '-----------------------'
echo 'done :>'
