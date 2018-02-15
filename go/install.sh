echo $OS $ARCH $HOME_PROGRAMS
export GO_VERSION=1.9.4
export GO_HOME=/usr/local/go    

wget https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go$GO_VERSION.${OS}-$ARCH.tar.gz
rm  go$GO_VERSION.${OS}-$ARCH.tar.gz

sudo apt-get install vim-gnome -y

