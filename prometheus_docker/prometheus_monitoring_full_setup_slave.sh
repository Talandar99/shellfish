#!/bin/bash
echo '-----------------------'
echo 'node-exporter setup and run'
echo '-----------------------'
./setup_and_run_node_exporter.sh
echo '-----------------------'
echo 'prometheus yml and template container'
echo '-----------------------'
./build_yml_and_pull_prometheus_container_slave.sh
echo '-----------------------'
echo 'build and run prometheus container'
echo '-----------------------'
./build_and_run_prometheus_container.sh
echo '-----------------------'
echo 'cleaning up'
echo 'and'
echo 'killing all containers '
echo '-----------------------'
./clean_up.sh
echo '-----------------------'
echo 'done :>'
