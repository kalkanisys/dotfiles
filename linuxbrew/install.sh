# Run if it is linux
if [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then

    # Install brew bundle based on brewfile in current directory
    brew bundle --file $HOME/.dotfiles/linuxbrew/Brewfile

    # Update and Upgrade
    echo "Updating and upgrading Homebrew..."
    echo
    yes | brew update
    yes | brew upgrade

    # Remove outdated versions from the cellar
    brew cleanup
fi
