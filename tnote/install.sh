sudo apt-get install -y libsqlcipher-dev

git clone https://github.com/tasdikrahman/tnote ./tnote/tnote
cd ./tnote/tnote && sudo pip3 install -r requirements.txt
sudo chmod +x tnote


ln -s $(pwd)/tnote $ZSH/bin/tnote

cd ../..


