alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
