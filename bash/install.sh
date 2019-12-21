#!/usr/bin/env bash

if [ ! -d $HOME/.oh-my-zsh ]; then
    git clone https://github.com/ohmyzsh/ohmyzsh/ $HOME/.oh-my-zsh
else
    cd $HOME/.oh-my-zsh && git pull origin master && cd -
fi

svn export https://github.com/littleq0903/gcloud-zsh-completion.git/trunk/src "$ZSH_CUSTOM/plugins/zsh-completions/src" --force

