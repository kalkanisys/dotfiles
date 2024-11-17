# Run if it is linux
if [[ "$(uname)" == "Darwin" ]]; then

    # Install brew bundle based on brewfile in current directory
    brew bundle --file $HOME/.dotfiles/homebrew/Brewfile

    # Update and Upgrade
    echo "Updating and upgrading Homebrew..."
    echo
    yes | brew update
    yes | brew upgrade

    # Remove outdated versions from the cellar
    brew cleanup
fi
