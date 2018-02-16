#!/bin/bash

## install YouCompleteMe
cd vim.symlink/bundle
git submodule update --init --recursive
cd YouCompleteMe
./install.py --clang-completer --java-completer --go-completer
cd ../../..

#####
## install vim-go
sh vim.symlink/vim_go_runtime.symlink/bin/install


#####
## install yavide
#sudo apt-get install build-essential vim-gnome python2.7 git libclang-dev
#git clone https://github.com/JBakamovic/yavide.git
#mkdir -p $HOME_PROGRAMS
#cd yavide && ./install.sh $HOME_PROGRAMS/yavide
#cd .. && sudo rm -R yavide

