# Install docker rootless if docker is globally installed

dockerd-rootless-setuptool.sh install
systemctl --user enable docker

# Add docker sock to ~/.localrc of not already present
if ! grep -q "DOCKER_HOST" ~/.localrc; then
    echo "export DOCKER_HOST=unix:///run/user/$(id -u)/docker.sock" >>~/.localrc
fi

# sudo loginctl enable-linger $(whoami)

# curl -fsSL https://get.docker.com/rootless | sh
