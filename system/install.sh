# Install fzf-git prompt
if [[ ! -d $HOME/.fzf-git ]]; then
    git clone https://github.com/junegunn/fzf-git.sh $HOME/.fzf-git
else
    git -C $HOME/.fzf-git pull
fi

# Install tmux plugin manager
if [[ ! -d $HOME/.tmux/plugins/tpm ]]; then
    mkdir -p $HOME/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    git -C $HOME/.tmux/plugins/tpm pull
fi
