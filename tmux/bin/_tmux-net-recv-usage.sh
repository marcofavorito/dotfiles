#!/usr/bin/env bash

awk '{if(l1){printf "%010.3f kB/s \n", ($2-l1)/1024} else{l1=$2; l2=$10;}}' <(grep wlp59s0 /proc/net/dev) <(sleep 1; grep wlp59s0 /proc/net/dev)

