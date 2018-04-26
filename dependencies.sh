#!/bin/bash

# Vundle installation
git clone https://github.com/gmarik/Vundle.vim.git "$USER_HOME/.vim/bundle/Vundle.vim"

sudo apt-get update

# Dependencies
sudo apt-get install -y python-dev \
                        python3-dev

################
# Python modules
################
sudo pip2 install powerline-status \
                  jedi \
                  pylint \
                  flake8 \
                  gitlint \
                  autopep8
sudo pip3 install powerline-status \
                  jedi \
                  pylint \
                  flake8 \
                  gitlint \
                  autopep8

#############
# PHP modules
#############

# PHP CodeSniffer
sudo wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -O /usr/local/bin/phpcs
sudo chmod a+rx /usr/local/bin/phpcs

# PHP CodeSniffer fixer
sudo wget https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar -O /usr/local/bin/phpcbf
sudo chmod a+rx /usr/local/bin/phpcbf

####################
# JavaScript modules
####################

sudo npm install -g eslint \
                    htmlhint
