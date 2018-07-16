#!/bin/sh

brew install cmake # Necessary to install YCM
brew install the_silver_searcher # To use ag inside fzf
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

ln -s ~/Developer/dotfiles/vim/vim.symlink ~/.vim
ln -s ~/Developer/dotfiles/vim/vimrc.symlink ~/.vimrc
ln -s ~/Developer/dotfiles/vim/gvimrc.symlink ~/.gvimrc
