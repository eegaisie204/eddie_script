for file in "$TARGET_DIR"/*; do
  if [ -f "$file" ]; then
    EXT="${file##*.}"
    mkdir -p "$TARGET_DIR/$EXT"
    mv "$file" "$TARGET_DIR/$EXT/"
  fi
done