#!/usr/bin/env bash

# misc utils
alias cclip='xclip -selection clipboard -rmlastnl'
alias zclip='xclip -sel clip'
alias copyLastCmd="fc -ln -1 | awk '{\$1=\$1}1' | cclip "

function getpods() {
    kubectl get pods | tail -n +2 | cut -d' ' -f1 | grep $1 
}
alias k="kubectl"

# useful awks!
alias enumerate="awk '{print NR-1 \" \" \$0}'"
alias avg="awk '{ print \$1 }' | awk '{s+=\$1}END{print s/NR}'"
alias var="awk '{total+=\$1 ; sq+=\$1*\$1 ; }END{ print sq/NR-(total/NR)**2 ; }'"

# REPLACE rm wit rmtrash
alias rm='rmtrash'
alias rmdir='rmdirtrash'

# my disk usage
alias mydu='du --block-size=M --max-depth=1'

# do 'git status' in every subdirectory
alias gsall='for i in $(ls -d */); do echo "Entering $i..."; cd $i; temp=$?; [[ $temp ]] && git status; [[ $temp ]] && cd ..; done;'

alias dcb='docker-compose build'
alias dcu='docker-compose up'


# enable vlc telnet interface
alias mmm="vlc --vout none --intf telnet --telnet-password admin --lua-config \"telnet={host='0.0.0.0:4212'}\""
alias vlcclient="vlcclient.py localhost:4212"

alias evpn="expressvpn"
alias evpnc="expressvpn connect smart"
alias evpnd="expressvpn disconnect"
alias evpns="expressvpn status"

alias myip="curl 'https://api.ipify.org'"
alias myip6="curl 'https://api6.ipify.org'"

function docker_libreoffice(){
    docker run --rm -it \
      --name docker_libreoffice --hostname libreoffice \
      -e PGID=1000 -e PUID=1000 \
      -c 512 -m 2096m \
      -e DISPLAY=unix:0 \
      -v /usr/share/fonts:/usr/share/fonts:ro \
      -v $(pwd):/home/alpine \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      woahbase/alpine-libreoffice:x86_64
}

alias lsdir="ls -d */"
alias mgrep="grep -Hnr "


# Check I can link to a static library
function have_static_library(){
# if the output is "/usr/bin/ld: cannot find -l$1" then you haven't got it.
# if the output is (.text+0x24): undefined reference to `main'  then yes you have it.
    gcc -l$1
}

function have_shared_library(){
# if the output is empty, then you haven't got it
    ldconfig -p | grep $1
}


alias=perfrg="perf report -g" 
alias=perfrgc="perf report -g 'graph,0.5,caller'"

alias=myvalgrind="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --log-file=valgrind-out.txt "

alias=svg2pdf="inkscape -D -z --file=image.svg --export-pdf=image.pdf --export-latex"
alias=svg2png="inkscape -z -w 1024 -h 1024 input.svg -e output.png"


function preconfigure(){
    libtoolize --force
    aclocal
    autoheader
    automake --force-missing --add-missing
    autoconf
}

alias emptyswap="sudo swapoff -a && sudo swapon -a"
alias sedri="find ./ -type f -not -path '*/\.git/*' | xargs sed -r -i "

alias myconcentration="sudo ~/.local/pipx/venvs/concentration/bin/python3 ~/.local/bin/concentration"
