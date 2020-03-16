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

# Python utils
sudo apt install -y python3-pip 
python3 -m pip install --upgrade pip
python3 -m pip install --force --no-cache-dir --user -U pipenv 
python3 -m pip install --force --no-cache-dir --user -U virtualenv
python3 -m pip install --force --no-cache-dir --user -U virtualenvwrapper
python3 -m pip install --force --no-cache-dir --user -U poetry
python3 -m pip install --user -U ipython
python3 -m pip install --user -U jupyter

# programming utils
python2 -m pip install --user -U pre-commit
python3 -m pip install --user -U liccheck
sudo apt-get install -y latexmk
sudo apt-get install -y jekyll
sudo apt-get install -y fonts-powerline

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
python3 -m pip install --user -U git+https://github.com/marcofavorito/py-vlcclient.git#egg=vlcclient
python3 -m pip install --user -U youtube-dl

