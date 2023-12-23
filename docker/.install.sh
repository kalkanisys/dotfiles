# Install docker rootless if docker is globally installed
# Name this file as ".instal.sh" to prevent it from being run by the installers
# But instead run it manually
set -e

dockerd-rootless-setuptool.sh install
systemctl --user enable docker

touch ~/.localrc

# Add docker sock to ~/.localrc of not already present
if ! grep -q "DOCKER_HOST" ~/.localrc; then
    echo "export DOCKER_HOST=unix:///run/user/$(id -u)/docker.sock" >>~/.localrc
fi

# Hints:
# sudo loginctl enable-linger $(whoami)
# curl -fsSL https://get.docker.com/rootless | sh
