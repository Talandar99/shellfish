#!/bin/bash
echo "Create postgres user"
echo "---------------------------"
sudo useradd postgres
echo "change postgres password"
echo "---------------------------"
sudo passwd postgress
echo "change ownership of files from root to postgres"
echo "---------------------------"
chown -R postgres:postgres /var/lib/postgres/
echo "run"
echo "---------------------------"
su - postgres -c "initdb --locale en_US.UTF-8 -D '/var/lib/postgres/data'"
