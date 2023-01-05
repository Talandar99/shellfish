#!/bin/bash
DATABASE_NAME=$1
psql -h localhost -U postgres -d $DATABASE_NAME -f querry.sql
