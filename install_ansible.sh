#!/bin/bash

echo "Updating apt repo"
sudo apt update -y

#echo "Sleeping for 30 seconds"
#sleep 30

echo "Installing software-properties-common"
sudo apt install software-properties-common -y
#echo "Sleeping for 30 seconds"
#sleep 30

echo "Adding Ansible repo"
sudo apt-add-repository --yes --update ppa:ansible/ansible
#echo "Sleeping for 30 seconds"
#sleep 30

echo "Installing Ansible"
sudo apt install ansible -y

echo "Installation Complete"
echo "Installed Ansible version $(ansible --version)"

echo "Installing sshpass"
sudo apt install sshpass
