#!/usr/bin/env bash

set -e

echo "Installing slack"

# Install slack
# Run if snap is installed
if command -v snap &>/dev/null; then
    sudo snap install slack
fi
