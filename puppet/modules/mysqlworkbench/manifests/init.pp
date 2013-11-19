# == Class: mysqlworkbench
#
# This class install mysqlworkbench package
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
# class { 'mysqlworkbench': }
#
class mysqlworkbench {
  
  package { "mysql-workbench":
    ensure => latest,
  }
  
}