#!/bin/bash

# Define the psql command variable for database access
# -t: tuple only, --no-align: no column padding, -c: run single command
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# 1. Check if an argument was provided
# If no argument is passed ($1 is empty), display instructions and exit
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit
fi

# 2. Determine the input type (Numeric or String)
# If the argument is a number, search by atomic_number
if [[ $1 =~ ^[0-9]+$ ]]
then
  WHERE_CONDITION="atomic_number = $1"
# Otherwise, search by symbol or name
else
  WHERE_CONDITION="symbol = '$1' OR name = '$1'"
fi

# 3. Fetch element data from the database using JOINs
# Combines elements, properties, and types tables to get all required info
ELEMENT_DATA=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE $WHERE_CONDITION")