# Install docker rootless if docker is globally installed

dockerd-rootless-setuptool.sh install
systemctl --user enable docker

# sudo loginctl enable-linger $(whoami)

# curl -fsSL https://get.docker.com/rootless | sh
