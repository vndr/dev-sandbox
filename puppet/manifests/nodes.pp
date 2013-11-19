node 'default' {
 class { 'vagrant': }
  
  class { 'virtualbox': }
    
  class { 'curl': }

  class { 'googlechromebrowser': }
  class { 'skype': }
  
  class { 'mysqlworkbench': }
}
