#!/usr/bin/env bash

SOURCE_DIR="$HOME/"
DEST_DIR="."

rsync -av --exclude='*.token' \
          --exclude='.viminfo' \
          --exclude='*history*' \
          --exclude='*hst*' \
          --exclude='.local' \
          --exclude='.cache' \
          --exclude='.conan' \
          --exclude='.ssh' \
          --exclude='.config' \
          --exclude='.vscode-server' \
          --include='.*' \
          --exclude='*' \
          "$SOURCE_DIR" "$DEST_DIR"
