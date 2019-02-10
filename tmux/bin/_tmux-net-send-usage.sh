#!/usr/bin/env bash

awk '{if(l1){print ($10-l2)/1024"kB/s"} else{l1=$2; l2=$10;}}' <(grep wlp59s0 /proc/net/dev) <(sleep 1; grep wlp59s0 /proc/net/dev)

