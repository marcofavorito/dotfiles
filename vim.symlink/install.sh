#!/bin/bash

## install YouCompleteMe
cd vim.symlink/bundle
#git submodule update --init --recursive
cd YouCompleteMe
./install.py --clang-completer --java-completer --go-completer
cd ../../..

#####

