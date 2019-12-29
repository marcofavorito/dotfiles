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

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

# TODO for Ubuntu 19.10 there's no release. so use 19.04 release
# sudo add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   disco \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io


sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
#######################################################################



# Clone all submodules
git submodule init
git submodule update --init --recursive

git submodule foreach git pull origin master
