#!/usr/bin/env bash

if [ ! -f $HOME/.oh-my-zsh ]; then
    git clone https://github.com/ohmyzsh/ohmyzsh/ $HOME/.oh-my-zsh
else
    cd $HOME/.oh-my-zsh && git pull origin master && cd -
fi

