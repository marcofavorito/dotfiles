#!/usr/bin/env bash

sudo apt install python3-pip -y
sudo apt install trash-cli
cd $HOME/.dotfiles/third_party/py-vlcclient/ && pip install . --user --no-cache-dir --force && cd -

