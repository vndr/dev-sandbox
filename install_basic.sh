#!/bin/bash
clear
cd /tmp
wget http://apt.puppetlabs.com/puppetlabs-release-raring.deb
dpkg -i puppetlabs-release-raring.deb
apt-get update
apt-get -y install puppet
puppet --version
apt-get -y install git
apt-get -y install openssh-server
apt-get -y install vim
git clone https://github.com/vndr/dev-sandbox.git
cd /tmp/dev-sandbox







