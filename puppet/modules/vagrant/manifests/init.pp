# == Class: vagrant
#
# This class install vagrant from deb package
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
# class { 'vagrant': }
#
class vagrant {

  file { "/tmp/vagrant":
    ensure => directory
  }

  file { "/tmp/vagrant/vagrant_1.3.5_x86_64.deb":
    owner   => root,
    group   => root,
    mode    => 644,
    ensure  => present,
    source  => "puppet:///modules/vagrant/vagrant_1.3.5_x86_64.deb"
  }

  package { "vagrant":
    provider => dpkg,
    ensure => latest,
    source => "/tmp/vagrant/vagrant_1.3.5_x86_64.deb"
  }
}