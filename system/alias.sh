#!/usr/bin/env bash

# misc utils
alias cclip='xclip -selection clipboard'
alias copyLastCmd="fc -ln -1 | awk '{\$1=\$1}1' | cclip "

function getPod() {
    kubectl get pods | grep $1 | cut -d' ' -f1 
}

# useful awks!
alias enumerate="awk '{print NR-1 \" \" \$0}'"
alias avg="awk '{ print \$1 }' | awk '{s+=\$1}END{print s/NR}'"
alias var="awk '{total+=\$1 ; sq+=\$1*\$1 ; }END{ print sq/NR-(total/NR)**2 ; }'"

# REPLACE rm wit rmtrash
alias rm='rmtrash'
alias rmdir='rmdirtrash'

