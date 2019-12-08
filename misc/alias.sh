#!/usr/bin/env bash

# random password generators
randpw(){ < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-"$1"};echo;}

# other approaches
#date +%s | sha256sum | base64 | head -c 32 ; echo
#< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;
#openssl rand -base64 32
#tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1
#strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo
#< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c6
#dd if=/dev/urandom bs=1 count=32 2>/dev/null | base64 -w 0 | rev | cut -b 2- | rev
#</dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c8; echo ""
#date | md5sum


