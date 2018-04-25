#!/bin/sh

sudo mkdir /usr/apache
sudo chmod 777 /usr/apache

cd /tmp

echo "installing java 8"
wget https://s3-us-west-2.amazonaws.com/blake-dev-ops-resources/jdk-8u171-linux-x64.rpm
sudo yum install -y jdk-8u171-linux-x64.rpm
echo "JAVA_HOME=/usr/java/latest" >> ~/.bashrc
echo "export JAVA_HOME" >> ~/.bashrc
echo "java 8 installed and configured"

echo "installing maven"
wget https://s3-us-west-2.amazonaws.com/blake-dev-ops-resources/apache-maven-3.5.3-bin.tar.gz
tar xvf apache-maven-3.5.3-bin.tar.gz
sudo mv apache-maven-3.5.3 /usr/apache
sudo chmod 777 /usr/apache/apache-maven-3.5.3
echo "M2_HOME=/usr/apache/apache-maven-3.5.3" >> ~/.bashrc
echo "export M2_HOME" >> ~/.bashrc
echo "export PATH=\$PATH:\$M2_HOME/bin" >> ~/.bashrc
echo "maven installed"

echo "installing jenkins"
wget https://s3-us-west-2.amazonaws.com/blake-dev-ops-resources/jenkins-2.89.4-1.1.noarch.rpm
sudo yum install jenkins-2.89.4-1.1.noarch.rpm -y
echo "jenkins installed now starting"
sudo service jenkins start
echo "jenkins started"


echo "downloading tomcat tar.gz"
sudo wget https://s3-us-west-2.amazonaws.com/blake-dev-ops-resources/apache-tomcat-8.5.30.tar.gz
sudo tar -xzvf apache-tomcat-8.5.30.tar.gz
echo "giving ec2-user permission for tomcat"
sudo chmod 777 apache-tomcat-8.5.30
sudo mv apache-tomcat-8.5.30 /usr/apache/
echo "CATALINA_HOME=/usr/apache/apache-tomcat-8.5.30"  >> ~/.bashrc
echo "export CATALINA_HOME"  >> ~/.bashrc
