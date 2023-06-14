#!/bin/bash

# Remote URL to download the TeamViewer Debian package
TEAMVIEWER_URL="https://download.teamviewer.com/download/linux/teamviewer_amd64.deb"

# Destination path to save the downloaded package
PACKAGE_PATH="/tmp/teamviewer_amd64.deb"

# Download the TeamViewer package
echo "Downloading TeamViewer..."
wget "$TEAMVIEWER_URL" -O "$PACKAGE_PATH"

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Download completed."

    # Install the package using dpkg
    echo "Installing TeamViewer..."
    sudo dpkg -i "$PACKAGE_PATH"

    # Install missing dependencies (if any)
    sudo apt-get -f install

    echo "TeamViewer installation complete."
else
    echo "Failed to download TeamViewer."
    exit 1
fi

# Clean up the downloaded package
rm "$PACKAGE_PATH"
