#! /bin/bash

Echo "########################################################"
sudo su
echo "Admin rights - Done"
cd /
echo "root folder "
uname -a
echo "Get Sytem information - Done"
apt-get update
echo "Update Apt-Get - Done"
sudo apt-get install apt-transport-https ca-certificates
echo "Install certificate - Done"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add –
echo "Download Docker.... - Done"
sudo apt-key fingerprint 0EBFCD88
echo "Applied Key value - Done"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo "Download Pre-release - Done"
sudo apt-get update
echo "Update system="
sudo apt-get install docker-ce
echo " Install Docker"
echo
sudo docker -v
echo "Docker Version"
sudo docker run hello-world
echo "Installatino Passed"
