# == Class: googlechromebrowser
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
#   class { 'googlechromebrowser': }
#
class googlechromebrowser {

      class { 'googlechromebrowser::apt': }
      
      package { "google-chrome-stable":
            ensure => "latest",
            require => Class['googlechromebrowser::apt'],
      }  
      
}
