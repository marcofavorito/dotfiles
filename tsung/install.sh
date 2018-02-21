#http://tsung.readthedocs.io/en/latest/installation.html
sudo apt-get -y install gnuplot perl
$ZSH/python/install.sh
sudo pip3 install matplotlib
sudo pip2 install matplotlib

wget http://tsung.erlang-projects.org/dist/tsung-1.7.0.tar.gz
tar -xf tsung-1.7.0.tar.gz
cd tsung-1.7.0

./configure
sudo make
sudo make install

cd ..
rm -rf tsung-1.7.0


