#https://askubuntu.com/questions/900794/virtualbox-rtr3initex-failed-with-rc-1912-rc-1912
#https://askubuntu.com/questions/994315/virtualbox-crash-on-kernel-4-13-0-26/994653#994653

echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" > /etc/apt/sources.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

sudo apt-get update
sudo apt-get install virtualbox-5.2

#sudo apt-get remove virtualbox-dkms
#sudo /sbin/vboxconfig
