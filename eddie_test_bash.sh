#!/bin/bash

# Check if the target directory argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 target_directory"
  exit 1
fi

TARGET_DIR="$1"

# Loop through files in the target directory
for file in "$TARGET_DIR"/*; do
  if [ -f "$file" ]; then
    # Extract the file extension
    EXT="${file##*.}"
    # Create a directory for the extension if it doesn't exist
    mkdir -p "$TARGET_DIR/$EXT"
    # Move the file to the corresponding directory
    mv "$file" "$TARGET_DIR/$EXT/"
  fi
done

echo "Files organized by extension in $TARGET_DIR!"