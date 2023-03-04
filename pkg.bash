#!/bin/bash

# Author: Ribgoama S Walbeogo

# Date Created: 03/01/2023

# Date Modified: 03/03/2023

# Description: ##---- This script installs packages ----##

##========================================================##

if [ $USER == root ]
then
yum install wget -y
  if [ $? -eq 0 ]
  then
  echo "Installation successfully completed"
  else
  echo "Installation failed"
  fi

yum install net-tools -y
  if [ $? -eq 0 ]
  then
  echo "Installation successfully completed"
  else
  echo "Installation failed"
  fi

yum install sysstat -y
  if [ $? -eq 0 ]
  then
  echo "Installation successfully completed"
  else
  echo "Installation failed"
  fi

yum install finger -y
  if [ $? -eq 0 ]
  then
  echo "Installation successfully completed"
  else
  echo "Installation failed"
  fi

yum install gcc -y
  if [ $? -eq 0 ]
  then
  echo "Installation successfully completed"
  else
  echo "Installation failed"
  fi

yum install make -y
  if [ $? -eq 0 ]
  then
  echo "Installation successfully completed"
  else
  echo "Installation failed"
  fi

yum install python3 -y
  if [ $? -eq 0 ]
  then
  echo "Installation successfully completed"
  else
  echo "Installation failed"
  fi

yum install epel-release -y
  if [ $? -eq 0 ]
  then
  echo "Installation successfully completed"
  else
  echo "Installation failed"
  fi

yum install git -y
  if [ $? -eq 0 ]
  then
  echo "Installation successfully completed"
  else
  echo "Installation failed"
  fi


else
echo "You need root access to install packages"
exit 1
fi
