#!/usr/bin/env zsh
# add each topic folder to fpath so that they can add functions and completion scripts
# for topic_folder ($ZSHDOT/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;

# Run only if directory exists and brew is installed
# if command -v brew &> /dev/null; then
#     fpath+=("$(brew --prefix)/share/zsh/site-functions")
# fi


# Default functions to always load
DEFAULT_FUNCTIONS=("git" "docker" "task")
# Set ZSH_FUNCTIONS to add additional default functions from homebrew
# Additional functions from the environment variable ZSH_FUNCTIONS
# Split ZSH_FUNCTIONS into an array (use space as the separator)
ADDITIONAL_FUNCTIONS=(${(s: :)ZSH_FUNCTIONS})

# Combine defaults and additional functions, removing duplicates
ALL_FUNCTIONS=(${(u)DEFAULT_FUNCTIONS} ${ADDITIONAL_FUNCTIONS})

SITE_FUNCTIONS_DIR="/opt/homebrew/share/zsh/site-functions"

if [[ -d "$HOME/.linuxbrew" ]]; then
    SITE_FUNCTIONS_DIR="$HOME/.linuxbrew/share/zsh/site-functions"
fi

ALL_FUNCTIONS=(${(u)DEFAULT_FUNCTIONS} ${ADDITIONAL_FUNCTIONS})

# Load functions into fpath
for cmd in $ALL_FUNCTIONS; do
  func_file="${SITE_FUNCTIONS_DIR}/_${cmd}"
  if [[ -f "$func_file" ]]; then
    fpath+=("$func_file")
  fi
done
