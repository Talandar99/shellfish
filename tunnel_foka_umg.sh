#!/bin/bash
# usage:
# ./tunnel_foka_umg.sh s99999
STUDENT_ID=$1
ssh -L 5432:localhost:5432 "$STUDENT_ID@foka.umg.edu.pl"
