#!/usr/bin/env bash
#
# Install all global default dependencies for workstation setup.

set -e

cd "$(dirname $0)"/../..

bash -e "_os/global/install-core.sh"
bash -e "_os/global/install-development.sh"
bash -e "_os/global/install-apps.sh"

echo "Installation of global dependencies complete"

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
#     find _os/scripts -name *.sh | while read installer; do bash -e ${installer}; done
# fi
