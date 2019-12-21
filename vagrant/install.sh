#!/usr/bin/env bash

sudo apt-get install -y vagrant

vagrant plugin expunge --force

export VAGRANT_DEFAULT_PROVIDER="virtualbox"
vagrant box add hashicorp/precise64 --provider virtualbox --force
vagrant box add ubuntu/bionic64 --provider virtualbox --force
# vagrant plugin install vagrant-share

