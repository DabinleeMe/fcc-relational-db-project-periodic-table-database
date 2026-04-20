#!/bin/bash

# 1. Check if an argument was provided
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit
fi

# 2. Database connection variable (configured for freeCodeCamp environment)
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# 3. Query logic based on input ($1)
# (Need to determine if $1 is an atomic_number, symbol, or name)
