node 'vagrant-ubuntu-raring-64' {
  file { '/tmp/hello': 
    content => "Hello, world\n",
  }
}
