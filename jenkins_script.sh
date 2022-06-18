#!/bin/bash

#Author: grace, June 13 2022

sudo yum install java-1.8.0-openjdk-devel -y

if [ $? -ne 0]
then
echo " installation failed please check the error and try again"
exit 1
fi


# Enable the Jenkins repository

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

# Install the latest stable version of Jenkins

sudo yum install jenkins -y

# Start the Jenkins service
 sudo systemctl start jenkins

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp

sudofirewall-cmd --reload

sudo yum insall java-1.8.0-openjdk-devel -y

# Enable t
sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

Installthe latest stable version of Jenkins

sudo yum install jenkins -y

# Start the Jenkins service#
 sudo systemctl start jenkins

# Script to open necessary port for Jenkins

sudo firewall-cmd --permanent --zo the Jenkins repository

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

# ne=public --add-port=8080/tcp

sudo firewall-cmd --reload

# Setting up Jenkins in the browser
  # install utilities to display web page
    sudo yum install curl wget lynx w3m elinks -y

   # Provide Initial Admin Password to user
     echo "Copy Password to login as Admin to Jenkins page"
       sudo cat /var/lib/jenkins/secrets/initialAdminPassword
          sleep 30

   # opening Jenkins page from the browser

   elinks  http://192.168.56.32:8080
