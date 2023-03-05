#!/bin/bash

# Author: Ribgoama S Walbeogo

# Date Created: 03/01/2023

# Date Modified: 03/04/2023

# Description: Install and configure SonarQube on CentOS 7
# Please run this as user vagrant
#========================================================#

user_name=$(whoami)

if [ $user_name != vagrant ]
then
echo "Must be run as user vagrant!!!"
exit 1
fi

# Install OpenJDK 11
echo "Installing OpenJDK 11"
sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

# Download SonarQube latest version on your server
## Navigate to the /opt directory before downloading
cd /opt

## Install wget if not installed
echo "Installing wget..."
sudo yum install wget -y

## Download SonarQube package
echo "Downloading SonarQube package..."
sudo wget https https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

# Extract packages
## Install unzip if not already installed
echo "Installing unzip on your system..."
sudo yum install unzip -y

echo "Unziping the previous installed package..."
sudo unzip -f /opt/sonarqube-9.3.0.51899.zip

# Change ownership to the user and Switch to Linux binaries directory to start service
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

# Open the port 9000
sudo firewall-cmd --list-all

sudo firewall-cmd --permanent --add-port=9000/tcp

sudo firewall-cmd --reload


./sonar.sh start


echo "Installation done successfully please get the ip and access your sonarqube on the browser"
