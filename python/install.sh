#https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-ubuntu-16-04
sudo apt-get update
sudo apt-get -y upgrade
python3 -V
sudo apt-get install -y python3-pip
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev python-setuptools

# set up virtual envs
sudo apt-get install -y python3-venv

# to create new env: 
# python3 -m venv my_env 
# source my_env/bin/activate


sudo apt-get install -y python3-pip

sudo easy_install pip 
pip install pip --upgrade 

pip3 install --upgrade pip
pip2 install --upgrade pip

PIP_PACKAGES="matplotlib"
sudo pip3 install $PIP_PACKAGES
sudo pip install  $PIP_PACKAGES

# for already installed packages
sudo pip3 install --upgrade $PIP_PACKAGES
sudo pip2 install --upgrade $PIP_PACKAGES

