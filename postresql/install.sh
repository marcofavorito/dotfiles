#https://gorails.com/setup/ubuntu/16.04
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-common
sudo apt-get install -y postgresql-9.5 libpq-dev



#sudo -u postgres createuser marcofavorito -s

## If you would like to set a password for the user, you can do the following
#sudo -u postgres psql
#postgres=# \password marcofavorito
