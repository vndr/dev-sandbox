node 'default' {
  class { 'vagrant': }
  
  class { 'virtualbox': }
    
  class { 'curl': }
}
