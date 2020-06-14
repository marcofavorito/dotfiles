#!/usr/bin/env bash

## zcash
# https://zcash.readthedocs.io/en/latest/rtd_pages/install_debian_bin_packages.html
sudo apt-get install -y apt-transport-https wget gnupg2
wget -qO - https://apt.z.cash/zcash.asc | sudo apt-key add -
grep -qxF "deb [arch=amd64] https://apt.z.cash/ jessie main" /etc/apt/sources.list.d/zcash.list || echo "deb [arch=amd64] https://apt.z.cash/ jessie main" | sudo tee /etc/apt/sources.list.d/zcash.list
sudo apt-get update && sudo apt-get install -y zcash


