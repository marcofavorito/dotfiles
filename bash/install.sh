#!/usr/bin/env bash

# add completion to custom plugin zsh-completions in ohmyzsh 
svn export https://github.com/littleq0903/gcloud-zsh-completion.git/trunk/src $ZSH/custom/plugins/zsh-completions/src --force

git clone https://github.com/ohmyzsh/ohmyzsh/ $HOME/.oh-my-zsh

