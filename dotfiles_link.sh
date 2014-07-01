#!/bin/bash
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

echo y | vim +":q"
