# == Class: tasksel
#
# This class install tasksel package
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
# class { 'tasksel': }
#
class tasksel {
  
  package { "tasksel":
    ensure => latest,
  }
  
}