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
python3 -m pip install --user -U pipx
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pipx
pipx install --force pipenv 
pipx install --force virtualenv
pipx install --force virtualenvwrapper
pipx install --force poetry
pipx install --force ipython
pipx install --force jupyter

# programming utils
pipx install --force pre-commit
pipx install --force liccheck
sudo apt-get install -y latexmk
sudo apt-get install -y jekyll
sudo apt-get install -y fonts-powerline
# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install -y yarn

# utils
sudo apt-get install -y gnome-tweak-tool
sudo snap install slack-term
sudo apt-get install -y xpdf
sudo apt-get install -y console-common
sudo apt-get install -y xclip
sudo apt-get install -y mutt
sudo apt-get install -y googler
sudo apt-get install -y ddgr
sudo apt-get install -y trickle
sudo googler --upgrade
sudo apt-get install -y w3m
sudo apt install -y vlc
sudo apt-get install -y zathura
pipx install --force git+https://github.com/marcofavorito/py-vlcclient.git#egg=vlcclient
pipx install --force youtube-dl
pipx install --force pdfkit
pipx install --force concentration
sudo snap install ipfs

# cryptos
## bitcoin
sudo snap install bitcoin-core


