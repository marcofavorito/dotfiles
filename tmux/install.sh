#!/bin/sh

# from http://bogdanvlviv.com/posts/tmux/how-to-install-the-latest-tmux-on-ubuntu-16_04.html
sudo apt install -y automake
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libevent-dev
sudo apt install -y libncurses5-dev


rm -fr /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
sudo make install
cd -
rm -fr /tmp/tmux
