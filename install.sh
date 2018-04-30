#!/bin/bash

# Copy config
cp vimrc "$HOME/.vimrc"


# Fix permissions, just in case
sudo su -c "chown -R $USER:$USER $HOME/.vim"
sudo su -c "chmod u+rwx -R $HOME/.vim/*"

# Install plugins with Vundle
vim +PluginInstall +qall!

