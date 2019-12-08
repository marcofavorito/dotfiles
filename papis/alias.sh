#!/usr/bin/env bash

alias fromdoi="papis add --from doi"

function fromurl() {
    papis add --set url "$1" --set title "$2" --set tags "$3"
}

