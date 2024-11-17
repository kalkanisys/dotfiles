#!/usr/bin/env bash

set -e

echo "Installing inkscape"

# Inkscape
if ! ls -l /etc/apt/sources.list.d/ | grep -q "inkscape"; then
    sudo add-apt-repository ppa:inkscape.dev/stable
    sudo apt update
fi

sudo apt install -y inkscape
