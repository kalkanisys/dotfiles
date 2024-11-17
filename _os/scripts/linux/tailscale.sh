#!/usr/bin/env bash

set -e

echo "Installing tailscale"

if [[ ! -f /etc/apt/sources.list.d/tailscale.list ]]; then
    curl -fsSL https://tailscale.com/install.sh | sh
else
    sudo apt install -y tailscale
fi
