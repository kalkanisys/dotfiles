#!/usr/bin/env bash

# Install apps for Linux/MacOS

set -e

cd "$(dirname $0)"/../..

if [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    echo "Installing apps Linux"

    # Install browsers
    bash -e "_os/scripts/linux/google-chrome.sh"
    bash -e "_os/scripts/linux/firefox.sh"
    bash -e "_os/scripts/linux/brave.sh"

    # Install docker
    bash -e "_os/scripts/linux/docker.sh"

    # Install development tools
    bash -e "_os/scripts/linux/vscode.sh"
    bash -e "_os/scripts/linux/sublime.sh"
    bash -e "_os/scripts/linux/nodejs.sh"
    bash -e "_os/scripts/linux/php.sh"
    bash -e "_os/scripts/linux/inkscape.sh"
    bash -e "_os/scripts/linux/keepassxc.sh"
    bash -e "_os/scripts/linux/tailscale.sh"

    # Global configuration
    bash -e "_os/scripts/linux/configure-ssh.sh"

    sudo apt update -y

    # Install basics
    sudo apt install -y \
        git-cola \
        flameshot \
        vlc mplayer-gui

    # Run if snap is installed
    if command -v snap &>/dev/null; then
        # Install dbeaver-ce
        sudo snap install dbeaver-ce
    fi

elif [[ "$(uname)" == "Darwin" ]]; then
    echo "Installing apps for macOS"

    brew install node@22 php tailscale

    brew install --cask \
        google-chrome brave-browser \
        firefox firefox@developer-edition

    brew install --cask docker

    brew install --cask \
        iterm2 visual-studio-code \
        sublime-text zed cursor

    brew install --cask \
        inkscape keepassxc \
        slack tunnelblick

    brew install --cask \
        dbeaver-community iina numi \
        raycast responsively zoom
fi

# cask "anydesk"
# cask "audacity"
# cask "balsamiq-wireframes"
# cask "cursor"
# cask "dbeaver-community"
# cask "docker"
# cask "firefox"
# cask "font-fira-code"
# cask "font-jetbrains-mono"
# cask "gimp"
# cask "iina"
# cask "inkscape"
# cask "iterm2"
# cask "notion-calendar"
# cask "numi"
# cask "openvpn-connect"
# cask "raycast"
# cask "responsively"
# cask "sublime-text"
# cask "superlist"
# cask "tunnelblick"
# cask "visual-studio-code"
# cask "wezterm"
# cask "zed"
# cask "zoom"