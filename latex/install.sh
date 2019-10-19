#!/usr/bin/env bash

sudo apt-get install -y         \
    texlive-latex-base          \
    texlive-latex-extra         \
    texlive-latex-recommended   \
    texlive-bibtex-extra        \
    xzdec                       \
    latexmk                     \
    biber                       \ 
    xpdf                        \
    xzdec

sudo tlmgr option repository ftp://tug.org/historic/systems/texlive/2017/tlnet-final
sudo tlmgr update --all
sudo tlmgr install biblatex
sudo tlmgr install logreq 
sudo tlmgr install csquotes 
sudo tlmgr install inputenc 

