if [[ -d /opt/homebrew/bin ]]; then
    # --- Homebrew ---
    # Add brew to path
    eval $(/opt/homebrew/bin/brew shellenv)
fi
