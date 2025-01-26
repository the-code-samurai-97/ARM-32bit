#!/bin/bash

# Directory to scan (repository's root directory by default)
directory=$(pwd)

# Find and remove ELF files
find "$directory" -type f -exec file {} \; | grep -i 'elf' | cut -d: -f1 | while read -r elf_file; do
    echo "Removing ELF file: $elf_file"
    rm -f "$elf_file"
done

echo "ELF files removed from $directory"

# Allow the commit to proceed
exit 0