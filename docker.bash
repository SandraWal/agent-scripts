#!/bin/bash

# Author: Ribgoama S Walbeogo

# Date Created: 03/01/2023

# Date Modified: 03/03/2023

# Description: ##----- Install Docker on CentOS7 -------##

##======================================================##

# Uninstall any older versions before attempting to install a new version.
echo "Uninstalling any older versions...."

sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine


# Set up the repository

sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker Engine, containerd, and Docker Compose
echo "Installing latest Docker Engine, containerd, and Docker Compose..."

sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Start Docker
echo "Startting Docker..."

sudo systemctl start docker


# Verify that Docker Engine installation is successful by running the hello-world image
sudo systemctl status docker

sudo docker run hello-world
