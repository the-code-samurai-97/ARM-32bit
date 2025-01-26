#!/bin/bash

# Formatter script for ARM assembly with proper indentation for instructions
# Works on macOS and Linux

# Set indent size for instructions
INDENT="    "  # 4 spaces

# Process the file
sed -E -i '' -e "
  /^[[:space:]]*[a-zA-Z0-9_]+:/b

  # Match instructions and indent them
  /^[[:space:]]*([a-z]+)[[:space:]]+([^;]*)/s//${INDENT}\1\t\2/
" "$@"