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
ELEMENT_DATA=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE $WHERE_CONDITION")

