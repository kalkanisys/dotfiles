curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | PROFILE=/dev/null bash

NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if test $(which nvm); then
  nvm install --lts
fi

if test $(which nvm); then
  npm i -g npm@latest
  npm install -g prettier eslint yarn zx serve pnpm npm-check-updates tldr watch @jsdevtools/version-bump-prompt @devcontainers/cli
fi
