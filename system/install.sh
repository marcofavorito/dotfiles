sudo apt-get update -y && sudo apt-get upgrade -y

sudo apt-get dist-upgrade -y

# OS monitoring
sudo apt-get install -y htop &&\
sudo apt-get install -y dstat &&\
sudo apt-get install -y nethogs

sudo apt-get install -y git &&\
sudo apt-get install -y vim &&\
sudo apt-get install -y apcalc &&\
sudo apt-get install -y nmap &&\
sudo apt-get install -y curl &&\
sudo apt-get install -y gnupg2 &&\
sudo apt-get install -y virtualbox &&\

# programming utils
sudo pip2 install -U pre-commit
sudo pip3 install -U liccheck
sudo apt-get install -y latexmk
sudo apt-get install -y ruby-full ruby-bundler
sudo apt-get install -y jekyll

# utils
sudo apt-get install -y console-common
sudo apt-get install -y xclip
sudo apt-get install -y googler
sudo googler --upgrade
sudo apt-get install -y w3m
sudo apt install -y vlc
sudo pip3 install -U git+https://github.com/marcofavorito/py-vlcclient.git#egg=vlcclient
sudo pip3 install -U youtube-dl

