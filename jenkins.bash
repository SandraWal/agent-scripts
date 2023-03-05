#!/bin/bash

# Autheur: 

# Date Created: 03/01/2023

# Date Modified: 03/03/2023

# Description: ##------ Automate Jenkins installation ------##

##===========================================================##

# Since Jenkins is a Java application, we first need to Install Java on the system.
echo "Installing Java on the system..."

sudo yum install java-11-openjdk-devel -y


# Enable the Jenkins repository.
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key


# Install the latest stable version oj Jenkins
echo "Installing the latest stable version oj Jenkins..."

sudo yum install jenkins -y

# After the installation process is completed, we need to start the service.
sudo systemctl start jenkins

# Check the status
sudo systemctl status jenkins

# Enable the Jenkins service to start on system boot.
sudo systemctl enable jenkins

# Open necessary port for Jenkins

sudo firewall-cmd --permanent --add-service=http

sudo firewall-cmd --permanent --add-service=https

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp

sudo firewall-cmd --reload

echo "Jenkins is ready, please get ip and type it on your browser"
