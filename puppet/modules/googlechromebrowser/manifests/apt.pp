# == Class: virtualbox::apt
#
# This class installs the Google chrome browser APT repository.
#
# === Parameters
#
# === Actions
#
# - Install Google chrome browser repository
# - Perform initial sync to update package database
#
# === Requires
#
# === Sample Usage
#
#   class { 'googlechromebrowser::apt': }
#

class googlechromebrowser::apt {

 exec { 'apt_key_googlechrome':
    path    => '/bin:/usr/bin',
    command => "wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -",
    logoutput => "on_failure",
    before  => File[ '/etc/apt/sources.list.d/google-chrome.list'],
  }

  file { '/etc/apt/sources.list.d/google-chrome.list':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => "puppet:///modules/googlechromebrowser/google-chrome.list"
  }
 
  exec { 'apt_update_googlechromebrowser':
    command     => '/usr/bin/apt-get update',
    subscribe   => File[ '/etc/apt/sources.list.d/google-chrome.list' ],
    refreshonly => true,
  }
}