if [[ -d $HOME/.linuxbrew/bin ]]; then
    # --- Homebrew ---
    # Add brew to path
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi