#!/usr/bin/env bash
#
# Run all dotfiles installers.

set -e

# http://man.openbsd.org/sh
# https://www.rust-lang.org/tools/install

curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path
