#!/usr/bin/env bash

pip3 install --user -U whoosh
pip3 install --user -U papis
rip3 install --user -U papis-zotero

if [ ! -d $HOME/bookshelf ]; then
    echo "cloning 'bookshelf'"
    git clone https://github.com/marcofavorito/my-bookshelf.git "$HOME/bookshelf";
fi

