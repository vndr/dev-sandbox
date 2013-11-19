# == Class: user
#
# This class will create user with password 123456
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
# class { 'user::group': }
# class { 'user': }
#

class user {

  $usern = $::username

  group { "${usern}":
    gid => '1002',
    ensure => present,
  }
    
  user { $usern:
      ensure  => 'present',
      comment => "${usern},,,",
      uid     => '1002',
      gid     => '1002',      
      shell   => '/bin/bash',
      groups  => ['adm', 'cdrom', 'sudo', 'dip', 'plugdev', 'lpadmin', 'sambashare', 'vboxsf'],
      home    => "/home/${usern}",
      managehome  => true,
      password => '$6$baQbpzw8$lc6sx0zMSU8L5oPSH/GsWps08qsg7OOEWkrzpx3jWbzbRvkl7kQ7K8sEo0/cTlQuoUASudOskOMYvRqxU1WI11',
      password_max_age => '99999',
      password_min_age => '0',
  }  
  

}