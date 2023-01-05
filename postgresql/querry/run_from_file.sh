#!/bin/bash
DATABASE_NAME=$1
FILE_NAME=$2
psql -h localhost -U postgres -d $DATABASE_NAME -f $FILE_NAME
