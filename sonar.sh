#!/bin/bash
sudo yum install java-17 -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.10.61524.zip
sudo unzip sonarqube-8.9.10.61524.zip
sudo mv sonarqube-8.9.10.61524 sonar 
sudo mv sonar /opt
sudo chown -R ec2-user:ec2-user /opt
sudo chmod -R 777 /opt
