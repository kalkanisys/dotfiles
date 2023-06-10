# Install the correct homebrew for each OS type
if test "$(uname)" = "Darwin"; then
    echo "nothing to install for now"
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    sudo apt update -y
    sudo apt install -y \
        apt-transport-https \
        git-flow \
        gnupg \
        autoconf \
        build-essential \
        make \
        dbus-user-session \
        uidmap \
        openssh-server \
        net-tools \
        libgconf-2-4 \
        git-cola \
        python2.7 python3 \
        byobu \
        ufw
fi

exit 0
