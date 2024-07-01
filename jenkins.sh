#!/bin/bash

## update system
sudo apt update

## get repos
sudo sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

sudo  echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

## install Java
sudo apt-get install fontconfig openjdk-17-jre -y

## install Jenkins
sudo apt-get install jenkins -y
