#!/usr/bin/env bash

SOURCE_DIR="$HOME/"
DEST_DIR="."

rsync -av --exclude='*.token' \
          --exclude='.viminfo' \
          --exclude='*history*' \
          --exclude='*hst*' \
          --exclude='.cache' \
          --exclude='.conan' \
          --exclude='.ssh' \
          --exclude='.vscode-server' \
          --exclude='*' \
          --include='.*' \
          "$SOURCE_DIR" "$DEST_DIR"