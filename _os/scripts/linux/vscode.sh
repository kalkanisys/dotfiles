#!/usr/bin/env bash

set -e

echo "Installing vscode"

# Install VS code
if [[ ! -f /etc/apt/sources.list.d/vscode.list ]]; then
    curl https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor >/tmp/microsoft.gpg
    sudo install -o root -g root -m 644 /tmp/microsoft.gpg /etc/apt/trusted.gpg.d/
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt update
fi

sudo apt install -y code
