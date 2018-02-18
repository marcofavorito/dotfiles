#sudo add-apt-repository -y ppa:samuel-bachmann/boost
#sudo apt-get -qq -d update
#sudo apt-get install libboost-all-dev 


rm -R $HOME_PROGRAMS/boost_1_66_0 
wget https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.bz2
tar --bzip2 -xf boost_1_66_0.tar.bz2
cd boost_1_66_0
#./bootstrap.sh --prefix=$HOME_PROGRAMS/boost_1_66_0
./bootstrap.sh
./b2 install
cd -
rm -R boost_1_66_0 boost_1_66_0.tar.bz2


# symbolic link to include folder
#sudo ln -s $HOME_PROGRAMS/boost_1_66_0/include/boost /usr/include/boost 
