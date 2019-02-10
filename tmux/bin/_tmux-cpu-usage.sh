#!/usr/bin/env bash

top -bn1 | grep "Cpu(s)" |\
sed "s/.*, *\([0-9.]*\)%* id.*/\1/" |\
awk '{printf "%02d%%", 100 - $1}'

