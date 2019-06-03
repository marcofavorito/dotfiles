#!/usr/bin/env bash

function download_gitignore() {
    BASE_URL="https://raw.githubusercontent.com/github/gitignore/master/$1.gitignore"
    wget $BASE_URL 
}

download_gitignore $1
