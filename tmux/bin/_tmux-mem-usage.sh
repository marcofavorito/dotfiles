#!/usr/bin/env bash

free -m | sed '2n;d' | awk '{printf "%05.2f%\n", $3/$2 * 100}'

