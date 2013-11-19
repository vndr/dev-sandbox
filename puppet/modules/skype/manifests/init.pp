# == Class: skype
#
# This class install google chrome browser from repository
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
#   class { 'skype': }
#
class skype {

      class { 'skype::apt': }
      
      package { "skype":
            ensure => "latest",
            require => Class['skype::apt'],
      }  
      
}
