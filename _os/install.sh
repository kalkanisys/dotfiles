# Install necessary tools and packages for dotfiles setup
# This script handles installations that don't require root access

# Detect the operating system
if [[ "$(uname)" == "Darwin" ]]; then
    echo "Setting up dotfiles for macOS"
    # Install Homebrew if not already installed
    if ! command -v brew &> /dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    # Add more macOS-specific installations here
    # For example:
    # brew install git
    # brew install zsh
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    echo "Setting up dotfiles for Linux"
    # Install Linuxbrew if not already installed
    if ! command -v brew &> /dev/null; then
        echo "Installing Linuxbrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    # Add more Linux-specific installations here
    # For example:
    # brew install git
    # sudo apt-get install zsh
else
    echo "Unsupported operating system"
    exit 1
fi

# Install common tools for both macOS and Linux
# For example:
# brew install tmux
# brew install vim

echo "Dotfiles setup complete"

