#!/bin/bash

echo "What log level would you like to search for? (e.g., INFO, ERROR, DEBUG)"

read LOG_LEVEL

echo "Searching for lines starting with '$LOG_LEVEL'..."

echo ""

grep -i "^$LOG_LEVEL" data.txt
