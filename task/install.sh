#!/usr/bin/env bash
#
# https://taskfile.dev/usage/

mkdir -p ~/.local/bin
SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")";
bash "$SCRIPT_DIR/task-install.sh" -d -b ~/.local/bin
