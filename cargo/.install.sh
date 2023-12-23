#!/usr/bin/env bash
#
# Run all dotfiles installers.

set -e

# http://man.openbsd.org/sh
# https://www.rust-lang.org/tools/install

# TODO: Need to add verification of all installer scripts
# loaded from the internet.
curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path
