#!/bin/bash

# Vundle installation
git clone https://github.com/gmarik/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"

sudo apt-get update

##################
# Apt dependencies
##################
sudo apt-get install -y python-dev \
                        python3-dev \
                        shellcheck

################
# Python modules
################
pip install powerline-status \
                  pylint \
                  flake8 \
                  gitlint \
                  vim-vint \
                  autopep8

