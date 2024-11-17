# if nano is installed
if command -v nano &>/dev/null; then
    # export VISUAL='code'
    export EDITOR='nano'
else
    # export VISUAL='vim'
    export EDITOR='vim'
fi
