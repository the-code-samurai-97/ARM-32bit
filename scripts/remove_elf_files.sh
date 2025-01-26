#!/bin/bash

# Directory to scan (current directory by default)
directory="${1:-.}"

# Find and remove ELF files
find "$directory" -type f -exec file {} \; | grep -i 'elf' | cut -d: -f1 | while read -r elf_file; do
    echo "Removing ELF file: $elf_file"
    rm -f "$elf_file"
done

echo "ELF files removed from $directory"