#!/usr/bin/env bash

SOURCE_DIR="."
DEST_DIR="$HOME/"

rsync -av --exclude='.gitignore*' \
          --exclude='.git' \
          --exclude='.gitconfig' \
          --exclude='*.sh' \
          --exclude='*.md' \
          --include='.*' \
          --exclude='*' \
          "$SOURCE_DIR" "$DEST_DIR"