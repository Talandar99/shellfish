#!/usr/bin/env bash
# FRP - fast reverse proxy
#
# this is installation script for frp
# it assumes you have 
# - make
# - golang
# already installed
#
# Here are example configs for
#
# -----------------------------------------------------------
# CLIENT CONFIG (frpc.toml)
# -----------------------------------------------------------
#[common]
#server_addr = "REMOTE MACHINE IP ADDRESS"
#server_port = 7000
#
#[[proxies]]
#name = "udp_factorio"
#type = "udp"
#local_ip = "127.0.0.1"
#local_port = 34197
#remote_port = 34197
#
#[[proxies]]
#name = "tcp_minecraft"
#type = "tcp"
#local_ip = "127.0.0.1"
#local_port = 25565
#remote_port = 25565
# -----------------------------------------------------------
# command for running client
# frpc -c frpc.toml
# -----------------------------------------------------------
#SERVER CONFIG (frps.toml)
# -----------------------------------------------------------
#[common]
#bind_port = 7000
#bind_udp_port = 7000
# -----------------------------------------------------------
#command for running remote server:
#frps -c frps.toml




git clone https://github.com/fatedier/frp.git
cd frp
make
sudo install -m755 ./bin/frps /usr/local/bin/
sudo install -m755 ./bin/frpc /usr/local/bin/
echo "frp (frps i frpc) installed /usr/local/bin/"

