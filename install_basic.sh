#!/bin/bash
clear
cd ~
wget http://apt.puppetlabs.com/puppetlabs-release-raring.deb
dpkg -i puppetlabs-release-raring.deb
apt-get update
apt-get -y install puppet
puppet --version
apt-get -y install git
apt-get -y install openssh-server
apt-get -y install vim







