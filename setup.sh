#!/bin/bash

cd $(dirname $0)

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.gitignore_global ~/.gitignore_global
