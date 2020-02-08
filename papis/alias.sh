#!/usr/bin/env bash

alias fromdoi="papis add --no-confirm --no-open --no-edit --from doi"
alias fromarxiv="papis add --no-confirm --no-open --no-edit --from arxiv"
alias frombibtex="papis add --no-confirm --no-open --no-edit --from bibtex"

function fromurl() {
    papis add --no-confirm --no-open --no-edit --set url "$1" --set title "$2" --set tags "$3" --set author "$4" --set year "$5"
}

