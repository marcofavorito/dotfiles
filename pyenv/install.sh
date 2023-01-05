#!/usr/bin/env bash

sudo apt install -y git python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libffi-dev

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

source ~/.dotfiles/pyenv/env.sh

sudo apt install -y liblzma5 liblzma-dev
sudo apt install -y python-tk
