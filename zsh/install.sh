# Install pure prompt
if [[ ! -d $HOME/.pure ]]; then
    git clone https://github.com/sindresorhus/pure $HOME/.pure
else
    git -C $HOME/.pure pull
fi
