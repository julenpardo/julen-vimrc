#!/bin/bash

USERNAME=$USER
USER_HOME=$HOME

# Copy config
cp vimrc "$USER_HOME/.vimrc"


# Fix permissions, just in case
sudo su -c "chown -R $USERNAME:$USERNAME $USER_HOME/.vim"
sudo su -c "chmod u+rwx -R $USER_HOME/.vim/*"

# Install plugins with Vundle
vim +PluginInstall +qall!
