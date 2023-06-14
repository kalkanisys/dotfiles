# Install the correct homebrew for each OS type
if test "$(uname)" = "Darwin"; then
    echo "nothing to install for now"
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    sudo apt update -y
    sudo apt install -y \
        apt-transport-https \
        gnupg \
        dbus-user-session \
        uidmap \
        net-tools \
        libgconf-2-4 \
        python2.7 python3 \
        byobu \
        bat \
        iftop \
        bashtop \
        ack-grep
fi
