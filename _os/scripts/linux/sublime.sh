#!/usr/bin/env bash

set -e

echo "Installing sublime"

# Install sublime
if [[ ! -f /etc/apt/sources.list.d/sublime-text.list ]]; then
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg >/dev/null
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt update
fi

sudo apt install -y sublime-text
