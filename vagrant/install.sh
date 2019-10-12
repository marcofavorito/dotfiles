#!/usr/bin/env bash

sudo apt-get install -y vagrant
vagrant box add hashicorp/precise64
vagrant box add ubuntu/bionic64
vagrant plugin install vagrant-share

