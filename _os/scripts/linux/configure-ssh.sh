#!/usr/bin/env bash

set -e

echo "Updating ssh configuration"

if [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then

    SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")"

    # SSH configuration file
    sshd_config="/etc/ssh/sshd_config"

    sudo cp "$SCRIPT_DIR/conf/ssh-secure.conf" /etc/ssh/sshd_config.d/ssh-secure.conf
    sudo chmod 644 /etc/ssh/sshd_config.d/ssh-secure.conf

    # Create /etc/ssh/authorized_keys and make it readonly
    sudo touch /etc/ssh/authorized_keys
    sudo chmod 444 /etc/ssh/authorized_keys
    sudo mkdir -p /etc/ssh/keys/

    CURRENT_USER=$(whoami)
    # Copy current user's authorized_keys if exists, and /etc/ssh/keys does not have file already
    if [[ -f "/home/$CURRENT_USER/.ssh/authorized_keys" && ! -f "/etc/ssh/keys/$CURRENT_USER.authorized_keys" ]]; then
        sudo cp /home/$CURRENT_USER/.ssh/authorized_keys /etc/ssh/keys/$CURRENT_USER.authorized_keys
        sudo chmod 644 /etc/ssh/keys/$CURRENT_USER.authorized_keys
    fi

    # Restart SSH service
    sudo systemctl restart ssh.service

fi
