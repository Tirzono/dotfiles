#!/bin/bash

# Define the directory where files will be written
SSH_DIR="$HOME/.ssh"

# Create the directory if it doesn't exist
mkdir -p "$SSH_DIR"

# Loop through all environment variables starting with SSH_KEY_
for var in $(env -0 | cut -z -f1 -d= | tr '\0' '\n' | grep "^SSH_KEY_"); do
  # Get the variable name without the "SSH_KEY_" prefix
  var_name=${var#SSH_KEY_}

  # Convert the variable name to lowercase
  var_name_lower=$(echo "$var_name" | tr '[:upper:]' '[:lower:]')

  var_value=${!var}

  echo "$var_value" > "$SSH_DIR/$var_name_lower"
done
