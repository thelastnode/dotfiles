#!/bin/bash

ln -s vimrc ~/.vimrc
ln -s gitconfig ~/.gitconfig

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
if [ -f ~/.zshrc ]; then
    rm -f ~/.zshrc
fi
ln -s zshrc ~/.zshrc
