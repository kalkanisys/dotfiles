# .zshrc
fpath=($ZSHDOT/.extras/pure $fpath)

autoload -U promptinit; promptinit

PURE_PROMPT_SYMBOL=›
PURE_PROMPT_VICMD_SYMBOL=‹

# turn on git stash status
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:git:fetch only_upstream yes
zstyle :prompt:pure:path color white
zstyle ':prompt:pure:prompt:*' color cyan

prompt pure