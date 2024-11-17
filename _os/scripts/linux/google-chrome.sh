#!/usr/bin/env bash

set -e

echo "Installing chrome"

# Install chrome
if [[ ! -f /etc/apt/sources.list.d/google-chrome.list ]]; then
    wget https://dl-ssl.google.com/linux/linux_signing_key.pub -O /tmp/google.pub
    sudo gpg --no-default-keyring --keyring /etc/apt/keyrings/google-chrome.gpg --import /tmp/google.pub
    echo 'deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
    sudo apt-get update
fi

sudo apt-get install -y google-chrome-stable
sudo apt update --fix-missing
