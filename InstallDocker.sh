#! /bin/bash

Echo "########################################################"
echo "Installing Docker....."
echo 
uname -a
echo
apt-get update
echo
sudo su
echo
sudo apt-get install apt-transport-https ca-certificates
echo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add –
echo
sudo apt-key fingerprint 0EBFCD88
echo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo
sudo apt-get update
echo
sudo apt-get install docker-ce
echo
sudo docker -v
echo
sudo docker run hello-world
