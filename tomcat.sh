#!/bin/bash

sudo yum update -y
sudo yum install -y some-package
sudo yum install java-17 -y
sudo yum install git -y
sudo yum install maven -y
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.tar.gz

sudo tar xvzf apache-tomcat-9.0.93.tar.gz -C /opt
sudo mv /opt/apache-tomcat-9.0.93 /opt/tomcat
sudo chmod -R 777 /opt/tomcat
sudo chown -R ec2-user:ec2-user /opt
sudo cd /opt/tomcat/bin/
sudo sh startup.sh