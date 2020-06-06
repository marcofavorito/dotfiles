#!/usr/bin/env bash
# shortcuts for git
alias ga="git add"
alias gb="git branch"
alias gd="git diff --patience --ignore-space-change"
alias gh="git log --pretty=format:\"%Cgreen%h%Creset %Cblue%ad%Creset %s%C(yellow)%d%Creset %Cblue[%an]%Creset\" --graph --date=short"
alias gc="git checkout"
alias gs="git status"
alias gits="git commit -S -m $1"
alias gcam="git commit --amend"
alias gcamn="git commit --amend --no-edit"
alias gcd="git checkout develop"
alias gcm="git checkout master"
alias gpo="git push origin HEAD"
alias gpof="git push origin HEAD --force-with-lease"
alias gpom="git push origin master"
alias gpod="git push origin develop"
alias gpl="git pull origin HEAD" 
alias gpld="git pull origin develop"
alias gclo="git clone --recursive"
alias gfa="git fetch --all"

git config --global alias.pullall '!f(){ git pull "$@" && git submodule sync --recursive && git submodule update --init --recursive; }; f'
git config --global alias.syncUpdate '!f(){ git submodule sync --recursive && git submodule update --init --recursive; }; f'
git config --global alias.logg '!f(){ git log --graph --stat --decorate=full --color --word-diff=color -M -C --find-copies-harder -l100 --histogram "$@"; }; f'
git config --global alias.oldest-ancestor $'!zsh -c \'diff --old-line-format= --new-line-format= <(git rev-list --first-parent \"${1:-master}\") <(git rev-list --first-parent \"${2:-HEAD}\") | head -1\' -'

function cloneAllFromUser(){
    curl https://api.github.com/users/$2/repos?token=$1 | jq .[].ssh_url | xargs -I{} -P10 git clone --recursive {}
}

