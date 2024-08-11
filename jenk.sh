#!/bin/bash

# Update system packages
sudo yum update -y
sudo yum install java-17 -y
sudo yum install git -y
sudo yum install maven -y

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y
sudo yum install fontconfig java-17-openjdk
sudo yum install jenkins -y
sudo systemctl start daemon
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo yum install docker -y
sudo systemctl start docker 
sudo systemctl  enable docker 
sudo usermod -aG docker ec2-user
sudo docker run -itd --name sonar-c1 -p 9000:9000 sonarqube:8.9.10-community
sudo docker run -itd --name tomcat -p 8082:8080 tomcat