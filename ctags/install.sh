#!/usr/bin/env bash

# install uctags - the docker image
sudo curl https://raw.githubusercontent.com/universal-ctags/ctags-docker/master/uctags > /usr/local/bin/uctags
sudo chmod +x /usr/local/bin/uctags

# install from source
sudo apt install -y pkg-config autoconf python3-docutils libseccomp-dev \
 libseccomp2 libjansson-dev libjansson4

set -e
cd $HOME/.dotfiles/ctags/ctags/
./autogen.sh
./configure
make
sudo make install

