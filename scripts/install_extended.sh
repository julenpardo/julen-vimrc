#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

\cp "$DIR/../vimrc_basic" "$HOME/.vimrc"
cat "$DIR/../vimrc_extended" >> "$HOME/.vimrc"


# Install plugins with Vundle
vim +PluginInstall +qall!
