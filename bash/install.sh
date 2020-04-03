#!/usr/bin/env bash


sudo apt update
sudo apt install -y zsh
sudo apt install -y svn

if [ ! -d $HOME/.oh-my-zsh ]; then
    git clone https://github.com/ohmyzsh/ohmyzsh/ $HOME/.oh-my-zsh
else
    cd $HOME/.oh-my-zsh && git pull origin master && cd -
fi

ZSH_CUSTOM="$HOME/.dotfiles/ohmyzsh-custom"
svn export https://github.com/littleq0903/gcloud-zsh-completion.git/trunk/src "$ZSH_CUSTOM/plugins/zsh-completions/src" --force

chsh -s `which zsh`

