#!/usr/bin/env bash


apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

apt-get install -y              \
    texlive-latex-base          \
    texlive-latex-extra         \
    texlive-latex-recommended   \
    texlive-bibtex-extra        \
    xzdec                       \
    latexmk                     \
    biber                       \ 
    xpdf                        \
    xzdec


tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
tlmgr update --all
tlmgr install biblatex
tlmgr install logreq 
tlmgr install csquotes 
tlmgr install inputenc 

