#!/bin/bash

# Author: Ribgoama S Walbeogo

# Date Created: 03/01/2023

# Date Modified: 03/03/2023

# Description: Configure Apache server

##=====================================##

# update the local Apache httpd package index to reflect the latest upstream changes:
echo "Updating  the local Apache httpd package index..."

sudo yum update httpd -y

# Install the Apache package:
echo "Installing the Apache package..."

sudo yum install httpd -y


# Enable firewalld’s http service:

sudo firewall-cmd --permanent --add-service=http

# Open up port 443 by enabling the https service:

sudo firewall-cmd --permanent --add-service=https

# Reload the firewall to put new rules into effect:

sudo firewall-cmd --reload

# start the Apache process
sudo systemctl start httpd

# Verify that the service is running with the following command
sudo systemctl status httpd

# To re-enable the service to start up at boot
sudo systemctl enable httpd
