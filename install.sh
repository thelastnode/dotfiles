#!/bin/bash

# vim stuff
ln -s $(pwd)/vimrc ~/.vimrc
mkdir -p ~/.vim/autoload/
cd ~/.vim/autoload/
wget https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim
cd -
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git init
git submodule add git@github.com:flazz/vim-colorschemes.git colorschemes
git submodule add https://github.com/Raimondi/delimitMate.git
cd -

ln -s $(pwd)/gitconfig ~/.gitconfig

# zsh stuff
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
if [ -f ~/.zshrc ]; then
    rm -f ~/.zshrc
fi
ln -s $(pwd)/zshrc ~/.zshrc

# pms 
mkdir -p ~/.config/pms
ln -s $(pwd)/pmsrc ~/.config/pms/rc
