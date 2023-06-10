# Install the correct homebrew for each OS type
if test "$(uname)" = "Darwin"; then
    echo "nothing to install for now"
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    echo "Installing core installers for Linux"
    sudo apt update -y
    sudo apt install -y \
        vim \
        curl \
        wget \
        age \
        git \
        screen \
        restic \
        openssh-server \
        bc \
        lnav \
        bash \
        zsh \
        nano \
        tree \
        htop \
        rsync \
        jq \
        ufw
fi
