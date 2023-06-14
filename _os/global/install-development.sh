# Install the correct homebrew for each OS type
if test "$(uname)" = "Darwin"; then
    echo "nothing to install for now"
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    sudo apt update -y
    sudo apt install -y \
        git-flow \
        autoconf \
        build-essential \
        make \
        git-cola \
        flameshot
fi
