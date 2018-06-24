#!/bin/sh

brew install the_silver_searcher
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

ln -s ~/Developer/dotfiles/vim/vim.symlink ~/.vim
ln -s ~/Developer/dotfiles/vim/vimrc.symlink ~/.vimrc
