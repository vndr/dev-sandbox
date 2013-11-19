# == Class: curl
#
# This class install curl package
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
# class { 'curl': }
#
class curl {
  
  package { "curl":
    ensure => latest,
  }
  
}