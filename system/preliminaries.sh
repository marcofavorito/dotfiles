#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install git -y
sudo apt install subversion -y
sudo apt install vim -y
sudo apt install golang -y
sudo apt install curl -y
sudo apt install ssh -y

####################################################################### 
# install Docker on Ubuntu:
# https://docs.docker.com/install/linux/docker-ce/ubuntu/

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://get.docker.com -o get-docker.sh
DRY_RUN=1 sh ./get-docker.sh

#######################################################################



# Clone all submodules
git submodule init
git submodule update --init --recursive

git submodule foreach git pull origin master
