#!/usr/bin/env bash

sudo apt install trash-cli
cd $HOME/.dotfiles/third_party/py-vlcclient/ && pip3 install . --no-cache-dir --force && cd -

