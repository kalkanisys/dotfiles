# Install nodejs
if [ ! -f /etc/apt/sources.list.d/nodesource.list ]; then
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
fi

sudo apt-get install -y nodejs

# npm upgrade
sudo npm install -g npm@latest

# Install node globals
sudo npm install -g prettier eslint yarn zx npkill pnpm
