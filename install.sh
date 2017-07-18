#!/bin/bash

USERNAME=$USER
USER_HOME=$HOME

# Copy config
cp vimrc "$USER_HOME/.vimrc"

# Vundle installation
git clone https://github.com/gmarik/Vundle.vim.git "$USER_HOME/.vim/bundle/Vundle.vim"

sudo apt-get update

# Valloric/YouCompleteMe
sudo apt-get install -y build-essential cmake

sudo apt-get install -y python-dev \
                        python3-dev

# Powerline
sudo pip2 install powerline-status
sudo pip3 install powerline-status

# php-cs-fixer
sudo wget http://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -O /usr/local/bin/php-cs-fixer
sudo chmod a+rx /usr/local/bin/php-cs-fixer

# Fix permissions, just in case
sudo su -c "chown -R $USERNAME:$USERNAME $USER_HOME/.vim"
sudo su -c "chmod u+rwx -R $USER_HOME/.vim/*"

# Install plugins with Vundle
vim +PluginInstall +qall!

# Need to install YouCompleteMe after being installed with Vundle
cd "$USER_HOME/.vim/bundle/YouCompleteMe"
./install.py --clang-completer

# Install fonts for Powerline
git clone https://github.com/powerline/fonts /tmp/powerline_fonts
cd /tmp/powerline_fonts
./install.sh
rm -rf /tmp/powerline_fonts/

