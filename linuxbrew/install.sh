# Run if it is linux
if [[ "$(uname -s)" == "Linux" ]]; then

    BREWDIR="$(dirname $0)"
    # Install brew bundle based on brewfile in current directory
    brew bundle --file $BREWDIR/Brewfile

    # Update and Upgrade
    echo "Updating and upgrading Homebrew..."
    echo
    yes | brew update
    yes | brew upgrade

    # Remove outdated versions from the cellar
    brew cleanup
fi
