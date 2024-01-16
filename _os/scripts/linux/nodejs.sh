# Install nodejs
# if [ ! -f /etc/apt/sources.list.d/nodesource.list ]; then
    # curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
# fi

if [ ! -f /etc/apt/sources.list.d/nodesource.list ]; then
    sudo apt-get update
    sudo apt-get install -y ca-certificates curl gnupg
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    sudo chmod o+r /etc/apt/keyrings/nodesource.gpg

    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo chmod o+r /etc/apt/sources.list.d/nodesource.list
fi

sudo apt-get update
sudo apt-get install -y nodejs

# npm upgrade
# sudo npm install -g npm@latest

# Install node globals
sudo npm install -g prettier eslint yarn zx npkill pnpm @jsdevtools/version-bump-prompt pino-pretty tldr
