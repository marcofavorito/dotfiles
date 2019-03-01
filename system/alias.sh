#!/usr/bin/env bash

# mist utils
alias cclip='xclip -selection clipboard'
alias copyLastCmd="fc -ln -1 | awk '{\$1=\$1}1' | cclip "

function getPod() {
    kubectl get pods | grep $1 | cut -d' ' -f1 
}

alias enumerate="awk '{print NR-1 \" \" \$0}'"

# REPLACE rm wit rmtrash
alias rm='rmtrash'
alias rmdir='rmdirtrash'

