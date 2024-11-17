#!/usr/bin/env bash
# Install core dependencies for Linux/MacOS

set -e

if [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    echo "Installing core installers for Linux"
    sudo apt update -y
    sudo apt install -y \
        vim \
        nano \
        curl \
        wget \
        openssh-server \
        git \
        screen \
        byobu \
        age \
        restic \
        bc \
        lnav \
        bash \
        zsh \
        tree \
        htop \
        rsync \
        jq \
        ufw
        # fd-find \

elif [[ "$(uname)" == "Darwin" ]]; then
    echo "Installing global dependencies for macOS"

    # Install Homebrew if not already installed
    if ! command -v brew &>/dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    brew update -q
    brew install \
        vim \
        curl \
        wget \
        age \
        git \
        screen \
        byobu \
        restic \
        bc \
        lnav \
        bash \
        zsh \
        nano \
        tree \
        htop \
        rsync \
        jq \
        fd \
        coreutils gnu-sed

fi
