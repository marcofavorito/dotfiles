#!/usr/bin/env bash

top -bn1 | grep "Cpu(s)" | awk '{printf "%02.2f%%", 100 - $8}'

