#!/bin/bash
docker build -t myprometheus .
docker run -d -p 9090:9090 myprometheus 
echo "prometheus is running on localhost:9090"
