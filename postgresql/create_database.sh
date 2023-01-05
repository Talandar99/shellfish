#!/bin/bash
DBNAME=$1
createdb -U postgres -h localhost $DBNAME 
