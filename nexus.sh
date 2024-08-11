#!/bin/bash
sudo yum install java-17 -y
sudo wget https://download.sonatype.com/nexus/3/nexus-3.71.0-06-unix.tar.gz
sudo tar xvzf  nexus-3.71.0-06-unix.tar.gz -C /opt
sudo mv /opt/nexus-3.71.0-06 nexus
chown -R ec2-user:ec2-user /opt
chmod -R 755 /opt
