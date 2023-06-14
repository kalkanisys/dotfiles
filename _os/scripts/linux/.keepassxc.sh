# Keepassxc
if ! ls -l /etc/apt/sources.list.d/ | grep -q "keepassxc"; then
    sudo add-apt-repository ppa:phoerious/keepassxc
    sudo apt update
fi

sudo apt install -y keepassxc
