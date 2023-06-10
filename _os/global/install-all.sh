#!/usr/bin/env bash
#
# Install all global default dependencies for workstation setup.

set -e

cd "$(dirname $0)"/../..

bash -e "_os/global/install-core.sh"
bash -e "_os/global/install-extended.sh"

# Install browsers
bash -e "_os/scripts/linux/google-chrome.sh"
bash -e "_os/scripts/linux/firefox.sh"
bash -e "_os/scripts/linux/brave.sh"

# Install docker
bash -e "_os/scripts/linux/docker.sh"
bash -e "_os/scripts/linux/docker-compose.sh"

# Install development tools
bash -e "_os/scripts/linux/vscode.sh"
bash -e "_os/scripts/linux/sublime.sh"
bash -e "_os/scripts/linux/nodejs.sh"
bash -e "_os/scripts/linux/php.sh"
bash -e "_os/scripts/linux/git-cola.sh"

#!/usr/bin/env bash
#
# Run all dotfiles installers.

# cd "$(dirname $0)"/..

# bash -e "_os/install-extended.sh"

# # find the installers and run them iteratively

# if test "$(uname)" = "Darwin"; then
#     echo "nothing to install for now"
# elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
#     sudo apt update -y
#     find _os/scripts/ -name *.sh | while read installer; do bash -e ${installer}; done
# fi
