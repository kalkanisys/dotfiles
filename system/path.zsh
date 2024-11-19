# If fzf is installed, source it
if command -v fzf &>/dev/null; then

    # Set up fzf key bindings and fuzzy completion
    eval "$(fzf --zsh)"

    # --- setup fzf theme ---
    # fg="#CBE0F0"
    # bg="#011628"
    # bg_highlight="#143652"
    # purple="#B388FF"
    # blue="#06BCE4"
    # cyan="#2CF9ED"

    # export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"

    # -- Use fd instead of fzf --

    export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND="fd --type=d -d 10 --hidden --strip-cwd-prefix --exclude .git"

    # Use fd (https://github.com/sharkdp/fd) for listing path candidates.
    # - The first argument to the function ($1) is the base path to start traversal
    # - See the source code (completion.{bash,zsh}) for the details.
    _fzf_compgen_path() {
        fd --hidden --exclude .git . "$1"
    }

    # Use fd to generate the list for directory completion
    _fzf_compgen_dir() {
        fd --type=d -d 10 --hidden --exclude .git . "$1"
    }

    if [[ -f ~/.fzf-git/fzf-git.sh ]]; then
        source ~/.fzf-git/fzf-git.sh
    fi

    show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

    export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
    export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

    # Advanced customization of fzf options via _fzf_comprun function
    # - The first argument to the function is the name of the command.
    # - You should make sure to pass the rest of the arguments to fzf.
    _fzf_comprun() {
        local command=$1
        shift

        case "$command" in
        cd) fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
        export | unset) fzf --preview "eval 'echo \${}'" "$@" ;;
        ssh) fzf --preview 'dig {}' "$@" ;;
        *) fzf --preview "$show_file_or_dir_preview" "$@" ;;
        esac
    }

fi

# NodeJS
if [[ -d "$HOME/.nvm" ]]; then
    export NVM_DIR="$HOME/.nvm"
    [[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh" $NVM_STARTUP_OPS                   # This loads nvm
    # [[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
fi

if command -v yarn &>/dev/null; then
    export PATH="$PATH:$(yarn global bin)"
fi

if command -v pnpm &>/dev/null; then
    export PATH="$PATH:$(pnpm bin)"
fi

# Homebrew
if [[ -d /opt/homebrew/bin ]]; then
    # --- Homebrew ---
    # Add brew to path
    eval $(/opt/homebrew/bin/brew shellenv)

    [[ -d /opt/homebrew/share/zsh-autosuggestions ]] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Linuxbrew
if [[ -d $HOME/.linuxbrew/bin ]]; then
    # --- Homebrew ---
    # Add brew to path
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    [[ -d $HOME/.linuxbrew/share/zsh-autosuggestions ]] && source $HOME/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

fi

# Navi
export NAVI_CONFIG="$HOME/.navi.yaml"
export NAVI_PATH="$ZSHDOT/navi:$ZSHDOT/.user/navi"

if command -v navi &>/dev/null; then
    eval "$(navi widget zsh)"
fi
