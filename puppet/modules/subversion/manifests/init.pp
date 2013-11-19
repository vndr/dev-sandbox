# == Class: subversion
#
# This class install subversion package
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
# class { 'subversion': }
#
class subversion {
  
  package { "subversion":
    ensure => latest,
  }
  
}