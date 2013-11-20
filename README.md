Set user and install all required tools using puppet on fresh instalation of ubuntu desktop 13.04

1. install ubuntu on machine
2. login as root,
3. copy `install_basic.sh` file into `/tmp` directory
3. run from terminal:  `./install_basic.sh`
4. put your username
5. when is done, logout and login again with new username and password: 123456

What is installed:

using puppet:
- curl
- google chrome browser
- java7
- mysql workbench
- ruby version manager(rvm 1.24.1)
- ruby (ruby-1.9.3-p392)
- skype
- subversion
- tasksel
- vagrant (1.3.5)
- virtualbox (4.3)

via shell script:
- puppet(from http://apt.puppetlabs.com/)
- git
- openssh-server
- vim


TODO:
- refactor modules for other ubuntu distros (works only with `ubuntu desktop 13.04 raring`)
- write rspec-puppet tests
- add options to install diferent app versions
