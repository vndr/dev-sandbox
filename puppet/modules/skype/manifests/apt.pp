# == Class: skype::apt
#
# This class installs the Skype APT repository.
#
# === Parameters
#
# === Actions
#
# - Install Skype repository
# - Perform initial sync to update package database
#
# === Requires
#
# === Sample Usage
#
#   class { 'skype::apt': }
#

class skype::apt {

  file { '/etc/apt/sources.list.d/skype.list':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => "puppet:///modules/skype/skype.list"
  }
 
  exec { 'apt_update_skype':
    command     => '/usr/bin/apt-get update',
    subscribe   => File[ '/etc/apt/sources.list.d/skype.list' ],
    refreshonly => true,
  }
}