#!/usr/bin/env bash

echo "Install Git Large File System..."
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs

