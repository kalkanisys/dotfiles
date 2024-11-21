curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | PROFILE=/dev/null bash

NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Add prettier yarn pnpm packages to $NVM_DIR/default-packages file, if exists then override, in one line
if [[ -d $NVM_DIR ]]; then
  cat <<EOF >$NVM_DIR/default-packages
prettier
eslint
yarn
pnpm
npm-check-updates
@jsdevtools/version-bump-prompt
tsx
EOF
fi

# If nvm is install then install latest nvm
if command -v nvm &>/dev/null; then
  nvm install --lts --latest-npm
fi
