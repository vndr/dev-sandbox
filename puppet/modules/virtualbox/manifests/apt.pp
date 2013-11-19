# == Class: virtualbox::apt
#
# This class installs the Virtualbox APT repository.
#
# === Parameters
#
# === Actions
#
# - Install virtualbox repository
# - Perform initial sync to update package database
#
# === Requires
#
# === Sample Usage
#
#   class { 'virtualbox::apt': }
#

class virtualbox::apt {

 exec { 'apt_key_virtualbox':
    path    => '/bin:/usr/bin',
    command => "apt-key add /tmp/oracle_vbox.asc",
    before  => File[ '/etc/apt/sources.list.d/virtualbox.list' ],
  }

  file { '/etc/apt/sources.list.d/virtualbox.list':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => "puppet:///modules/virtualbox/virtualbox.list"
  }
 
  file { '/tmp/oracle_vbox.asc':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => "puppet:///modules/virtualbox/oracle_vbox.asc"
  }

  exec { 'apt_update':
    command     => '/usr/bin/apt-get update',
    subscribe   => File[ '/etc/apt/sources.list.d/virtualbox.list' ],
    refreshonly => true,
  }
}