#!/usr/bin/env bash

sudo apt install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdm-dev

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash

cd ~/.rbenv && src/configure && make -C src
cd ~/.dotfiles

~/.rbenv/bin/rbenv init

# to check successful installation, do:
#curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash


# install rbenv-build
mkdir -p "$(rbenv root)"/plugins
if [ ! -d $HOME/.oh-my-zsh ]; then
    git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
fi
git -C "$(rbenv root)"/plugins/ruby-build pull 


~/.rbenv/bin/rbenv install 2.7.0
gem install bundler

