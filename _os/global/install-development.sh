#!/usr/bin/env bash

# Install development dependencies for Linux/MacOS

set -e

cd "$(dirname $0)"/../..

if [[ "$(uname -s)" == "Linux" ]]; then
    echo "Installing development installers for Linux"

    sudo apt update -y

    # Install basics
    sudo apt install -y \
        apt-transport-https \
        gnupg \
        build-essential procps curl file git \
        autoconf \
        dbus-user-session \
        uidmap \
        net-tools \
        python3 \
        bat \
        iftop \
        bashtop \
        make awk curl fc-cache mkdir mktemp unlink unzip

    # Install dev utilities
    sudo apt install -y \
        git \
        bat \
        ack-grep \
        git-flow \
        fonts-firacode

    # # Install Step cli
    # wget https://dl.smallstep.com/cli/docs-cli-install/latest/step-cli_amd64.deb -O /tmp/step-cli_amd64.deb
    # sudo apt install /tmp/step-cli_amd64.deb && rm /tmp/step-cli_amd64.deb

    # Install fonts files from _os/scripts/linux/jet-brains-mono/*.ttf
    if [[ ! -d _os/scripts/linux/fonts ]]; then
        sudo cp _os/scripts/linux/fonts/*.ttf /usr/share/fonts/truetype/
    fi

    # Install brew for Linux
    if ! command -v brew &>/dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

elif [[ "$(uname)" == "Darwin" ]]; then
    echo "Installing extended dependencies for macOS"

    # Install Homebrew if not already installed
    if ! command -v brew &>/dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    brew update -q
    brew install \
        git \
        dbus \
        python \
        iftop \
        asitop \
        autoconf \
        automake \
        font-jetbrains-mono \
        font-fira-code

    # Install dev utilities
    brew install \
        bat \
        ack \
        git-flow \
        go-task \
        midnight-commander \
        step

fi
