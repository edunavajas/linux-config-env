#!/bin/bash

source "$SCRIPT_DIR/code/common.sh" 

echo "Cloning fzf for $DEFAULT_USER..."
cd
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

update_progress