
# Install fzf-git prompt
if [[ ! -d $HOME/.fzf-git ]]; then
    git clone https://github.com/junegunn/fzf-git.sh $HOME/.fzf-git
else
    git -C $HOME/.fzf-git pull
fi