#!/usr/bin/env bash

alias cclip='xclip -selection clipboard'
alias copyLastCmd="fc -ln -1 | awk '{\$1=\$1}1' | cclip "

function getPod() {
    kubectl get pods | grep $1 | cut -d' ' -f1 
}

