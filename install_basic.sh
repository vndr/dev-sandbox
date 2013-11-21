#!/bin/bash
clear
echo -n "Enter your username and press [ENTER]: "
read var_name
echo "Your username is: $var_name"
cd /tmp
wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb
apt-get update
apt-get -y install puppet
puppet --version
apt-get -y install git
apt-get -y install openssh-server
apt-get -y install vim
git clone https://github.com/vndr/dev-sandbox.git
cd /tmp/dev-sandbox
FACTER_username=$var_name puppet apply /tmp/dev-sandbox/puppet/manifests/site.pp --modulepath=/tmp/dev-sandbox/puppet/modules/ --debug





