# Install docker
if [ ! -f /etc/apt/sources.list.d/docker.list ]; then
    sudo apt-get update -y
    curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
    sudo sh /tmp/get-docker.sh

    sudo usermod -aG docker $USER
else
    sudo apt install -y docker-ce docker-ce-cli docker-ce-rootless-extras docker-compose-plugin docker-buildx-plugin docker-scan-plugin
fi

exit 0
