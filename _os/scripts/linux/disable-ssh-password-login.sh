#!/bin/bash

# Check if the script is run as root
# if [[ $EUID -ne 0 ]]; then
#    echo "This script must be run as root."
#    exit 1
# fi

# SSH configuration file
sshd_config="/etc/ssh/sshd_config"

# Backup the original SSH configuration
backup_file="$sshd_config.orig"
sudo cp "$sshd_config" "$backup_file"

# Disable password and challenge-response authentication
sudo sed -i 's/^PasswordAuthentication yes$/PasswordAuthentication no/' "$sshd_config"
sudo sed -i 's/^ChallengeResponseAuthentication yes$/ChallengeResponseAuthentication no/' "$sshd_config"

# Restart SSH service
sudo systemctl restart ssh.service

echo "SSH password and challenge-response authentication have been disabled."
echo "A backup of the original configuration has been saved as $backup_file."
