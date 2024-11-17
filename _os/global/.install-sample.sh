#!/usr/bin/env bash

set -e

if [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    echo "Installing development installers for Linux"


elif [[ "$(uname)" == "Darwin" ]]; then
    echo "Installing extended dependencies for macOS"

fi
