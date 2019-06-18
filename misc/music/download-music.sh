#!/usr/bin/env bash

CUR_DIR=$(dirname $0);

if [ -z $1 ] 
then
    DEST_DIR=${CUR_DIR}
    echo "Donwloading files in ${DEST_DIR}"
else
    DEST_DIR=$1
fi

cut -f2 ${CUR_DIR}/youtube-urls.tsv | xargs -I{} youtube-dl {} -o "${CUR_DIR}/%(title)s.mp4" --extract-audio --audio-format mp3

