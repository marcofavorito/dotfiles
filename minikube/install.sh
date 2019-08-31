#!/usr/bin/env bash

_installer_path=${DOTFILES}/minikube/minikube
curl -Lo $_installer_path https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x $_installer_path
sudo install $_installer_path /usr/local/bin
rm $_installer_path

