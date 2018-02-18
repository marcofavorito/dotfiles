curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

 
echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-${DISTRO_VERSION}-prod xenial main" | sudo tee  /etc/apt/sources.list.d/dotnetdev.list


sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1.4



