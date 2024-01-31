#!/bin/bash

# NOTE
#=========================================
# don't forget to setup remote server first
# ----------------------------------------
# vim /etc/ssh/sshd_config
# GatewayPorts yes
# AllowTcpForwarding yes
# ----------------------------------------
#systemctl restart sshd
#=========================================
# add this arguments while using script
# username hostname port
#=========================================
USERNAME=$1
HOSTNAME=$2
PORT=$3
ssh -R "0.0.0.0:$PORT:localhost:$PORT" -o ServerAliveInterval=60 -o ServerAliveCountMax=3 "$USERNAME@$HOSTNAME"
