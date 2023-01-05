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
python3 -m pip install virtualenv
python3 -m pip install virtualenvwrapper
sudo apt install -y pipx
pipx install --force pipenv 
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

# shell
sudo apt install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# signal 
# NOTE: These instructions only work for 64 bit Debian-based
# Linux distributions such as Ubuntu, Mint etc.

# 1. Install our official public software signing key
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# 2. Add our repository to your list of repositories
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# 3. Update your package database and install signal
sudo apt update && sudo apt install signal-desktop
