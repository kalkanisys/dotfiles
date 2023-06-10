#!/usr/bin/env bash
#
# https://taskfile.dev/usage/

set -e

mkdir -p ~/.local/bin
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin
