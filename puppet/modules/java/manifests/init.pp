# == Class: java
#
# This class install java from PPA repository
# 
# 
#
# === Parameters
#
# === Actions
#
# === Requires
#
# === Sample Usage
#
#   class { 'java': }
#
class java {

  package { "python-software-properties": }
 
  exec { "add-apt-repository-oracle":
    command => "/usr/bin/add-apt-repository -y ppa:webupd8team/java",
    notify => Exec["apt_update_java"]
  }
 
  exec {
    'set-licence-selected':
      command => '/bin/echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections';
 
    'set-licence-seen':
      command => '/bin/echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections';
  }
 
  package { 'oracle-java7-installer':
    ensure => "latest",
    require => [Exec['add-apt-repository-oracle'], Exec['set-licence-selected'], Exec['set-licence-seen']],
  }
  
  exec { 'apt_update_java':
    command     => '/usr/bin/apt-get update',
    refreshonly => true,
  }
      
}
