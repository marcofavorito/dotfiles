#!/usr/bin/env bash

sudo apt install -y git python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libffi-dev

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

source ~/.dotfiles/pyenv/env.sh

pyenv install 3.7.6 -s
pyenv install 3.8.1 -s
pyenv install 3.6.9 -s
pyenv global 3.7.6


