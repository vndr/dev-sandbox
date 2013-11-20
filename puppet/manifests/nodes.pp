node 'default' {
  
  stage { 'pre': before    => Stage['main'] }

  class { 'user': stage => 'pre' }
  
  class { 'vagrant': stage => 'pre' }
  class { 'virtualbox': stage => 'pre' }
  class { 'curl': stage => 'pre' }
  class { 'googlechromebrowser': stage => 'pre' }
  class { 'skype': stage => 'pre' }
  class { 'mysqlworkbench': stage => 'pre' }
  class { 'java': stage => 'pre' }
  class { 'tasksel': stage => 'pre' }
  class { 'subversion': stage => 'pre' }

  class { 'rvm': version => '1.24.1' }

    rvm_system_ruby {
      'ruby-1.9.3-p392':
       ensure => 'present',
       default_use => true;
    }
    
    rvm_gem {
        'bundler':
        name => 'bundler',
        ruby_version => 'ruby-1.9.3-p392',
        ensure => latest,
        require => Rvm_system_ruby['ruby-1.9.3-p392'];
    }
    
    rvm::system_user { $::username:  }
}
