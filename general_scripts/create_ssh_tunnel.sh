#!/bin/bash
# ./tunnel.sh username hostname 
USERNAME=$1
HOSTNAME=$2
ssh -L 5432:localhost:5432 "$USERNAME@$HOSTNAME"
