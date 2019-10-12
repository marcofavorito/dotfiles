#!/usr/bin/env bash


apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

apt-get install -y texlive-latex-base
apt-get install -y latexmk
apt-get install -y texlive-bibtex-extra 
apt-get install -y biber
apt-get install -y xpdf
