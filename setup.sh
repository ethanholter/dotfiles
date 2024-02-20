#!/bin/bash

# Define the directory containing shell scripts
SCRIPTS_DIR="scripts"

# Check if the directory exists
if [ ! -d "$SCRIPTS_DIR" ]; then
    echo "Directory $SCRIPTS_DIR does not exist."
    exit 1
fi

# Iterate over each shell script file in the directory
for file in "$SCRIPTS_DIR"/*.sh; do
    if [ -f "$file" ] && [ -x "$file" ]; then
        echo "$file already has execution privileges."
    elif [ -f "$file" ]; then
        chmod +x "$file"
        echo "Added execution privileges to $file."
    fi
done

echo "Execution privileges added to all shell scripts in $SCRIPTS_DIR."