if [[ -d "$HOME/.nvm" ]]; then
    export NVM_DIR="$HOME/.nvm"
    [[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
    [[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
fi

if command -v yarn &>/dev/null; then
    export PATH="$PATH:$(yarn global bin)"
fi

if command -v pnpm &>/dev/null; then
    export PATH="$PATH:$(pnpm bin)"
fi
