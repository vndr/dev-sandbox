First call ./install_basic.sh
then run puppet apply:
FACTER_username=[username] puppet apply /tmp/dev-sandbox/puppet/manifests/site.pp --modulepath=/tmp/dev-sandbox/puppet/modules/ --debug

