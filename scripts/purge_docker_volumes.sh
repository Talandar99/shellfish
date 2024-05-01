#!/bin/bash

docker compose down -v --remove-orphans
docker volume rm $(docker volume ls -q)
