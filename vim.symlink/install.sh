#!/bin/bash

## install YouCompleteMe
cd vim.symlink/bundle
#git submodule update --init --recursive
cd YouCompleteMe
./install.py --clang-completer --java-completer --go-completer
cd ../../..

#####
## install vim-go
sh vim.symlink/vim_go_runtime.symlink/bin/install

