export OS="linux"
export ARCH="amd64"
export ARCH_ALT="x86_64"
export WORKFOLDER="$HOME/workfolder"
export DOTFILES="$HOME/.dotfiles"

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/go/bin
#export GOPATH="$(go env GOPATH)"

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

export DISTRO_VERSION=$(lsb_release -sc)

# for googler
export BROWSER=w3m


