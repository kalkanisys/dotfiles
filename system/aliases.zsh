alias cls='clear' # Good 'ol Clear Screen command
alias vi='vim'

# Moving around
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias mv='nocorrect mv'
alias rm='nocorrect rm'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# List with better formatting
# alias ls="eza --icons=always"

# nodejs
alias ndev='npm run dev'
alias ndebug='npm run start:debug'
alias nfix='npm run fix'
alias nlint='npm run validate'
alias nrun='npm run'

# docker
alias d='docker $*'
alias d-c='docker-compose $*'
alias docker-compose='docker compose $*'

# croc
# alias croc=croc --pass YOURPASSWORD --relay "myreal.example.com:9009"
alias send=croc send
alias receive=croc receive

if command -v thefuck &>/dev/null; then
  # ---- TheFuck -----
  # thefuck alias
  eval $(thefuck --alias)
  eval $(thefuck --alias fk)
fi

if command -v zoxide &>/dev/null; then
  # ---- Zoxide (better cd) ----
  eval "$(zoxide init zsh)"
fi

# # grc overides for ls
# #   Made possible through contributions from generous benefactors like
# #   `brew install coreutils`
# if $(gls &>/dev/null); then
#   alias ls="gls -F --color"
#   alias l="gls -lAh --color"
#   alias ll="gls -l --color"
#   alias la='gls -A --color'
# fi

# # enable color support of ls and also add handy aliases
# if [[ -x /usr/bin/dircolors ]]; then
#   test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#   alias ls='ls --color=auto'
#   #alias dir='dir --color=auto'
#   #alias vdir='vdir --color=auto'

#   alias grep='grep --color=auto'
#   alias fgrep='fgrep --color=auto'
#   alias egrep='egrep --color=auto'
# fi
