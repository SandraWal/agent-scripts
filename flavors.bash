#!/bin/bash

# Author: Ribgoama S Walbeogo

# Date Created: 03/01/2023

# Date Modified: 03/03/2023

# Description: ##---- This script installs packages ----##

##========================================================##

OS=$(hostnamectl | grep "Operating System" | awk '{print $3}')

if [ $OS == CentOS ]
then
  echo "Installing on CenOS"
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
elif 
    echo "Installing on Ubuntu"
    if [ $USER == root ]
    then
      apt install wget -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apt install net-tools -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apt install sysstat -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apt install finger -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apt install gcc -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apt install make -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apt install python3 -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apt install epel-release -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apt install git -y
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
elif
    echo "Installing on Ubuntu"
    if [ $USER == root ]
    then
      apk add wget -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apk add net-tools -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apk add sysstat -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apk add finger -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apk add gcc -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apk add make -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apk add python3 -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apk add epel-release -y
      if [ $? -eq 0 ]
      then
      echo "Installation successfully completed"
      else
      echo "Installation failed"
      fi

      apk add git -y
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

  else
  echo "The OS does not exist"  	  
fi

