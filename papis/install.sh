#!/usr/bin/env bash

pip3 install --upgrade papis
pip3 install --upgrade whoosh
pip3 install --upgrade papis-zotero

if [ ! -d $HOME/bookshelf ]; then
    echo "cloning 'bookshelf'"
    git clone https://github.com/marcofavorito/my-bookshelf.git "$HOME/bookshelf";
else
    cd $HOME/bookshelf && git pull origin master && cd -
fi

