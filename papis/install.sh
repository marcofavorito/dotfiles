#!/usr/bin/env bash

python3 -m pip install --user -U whoosh
python3 -m pip install --user -U papis
python3 -m pip install --user -U papis-zotero

if [ ! -d $HOME/bookshelf ]; then
    echo "cloning 'bookshelf'"
    git clone https://github.com/marcofavorito/my-bookshelf.git "$HOME/bookshelf";
else
    cd $HOME/bookshelf && git pull origin master && cd -
fi

