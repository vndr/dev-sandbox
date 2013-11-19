# == Class: virtualbox
#
# This class install virtualbox from repository
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
#   class { 'virtualbox': }
#
class virtualbox {

      class { 'virtualbox::apt': }
      
      package { "virtualbox-4.3":
            ensure => "latest",
            require => Class['virtualbox::apt'],
      }  
      
}
