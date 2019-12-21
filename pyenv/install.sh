#!/usr/bin/env bash

sudo apt install -y git python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libffi-dev

export PYENV_ROOT="$HOME/.dotfiles/pyenv/pyenv.symlink"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv install 3.7.6 -s
pyenv global 3.7.6


