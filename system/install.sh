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
pip2 install --user -U pre-commit
pip3 install --user -U liccheck
sudo apt-get install -y latexmk
sudo apt-get install -y ruby-full ruby-bundler
sudo apt-get install -y jekyll
sudo apt-get install -y golang

# utils
sudo snap install slack-term
sudo apt-get install -y xpdf
sudo apt-get install -y console-common
sudo apt-get install -y xclip
sudo apt-get install -y mutt
sudo apt-get install -y googler
sudo apt-get install -y ddgr
sudo googler --upgrade
sudo apt-get install -y w3m
sudo apt install -y vlc
sudo apt-get install -y zathura
pip3 install --user git+https://github.com/marcofavorito/py-vlcclient.git#egg=vlcclient
pip3 install --user youtube-dl

