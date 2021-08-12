#!/bin/bash

echo "Updating apt repo"
sudo apt update -y

#echo "Sleeping for 30 seconds"
#sleep 30

echo "Installing dependencies"
sudo apt-get install \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common -y
#echo "Sleeping for 30 seconds"
#sleep 30

echo "Pulling Docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#echo "Sleeping for 30 seconds"
#sleep 30

echo "Installing Docker Stable"
sudo add-apt-repository \
   "deb [arch=arm64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "Installing Docker Engine"
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo "Setting up user permissions"
sudo groupadd docker
sudo usermod -aG docker $USER

echo "Installation Complete"
echo "Installed Docker version $(docker --version)"

echo "Enabling Docker"
sudo systemctl enable docker

