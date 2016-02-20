#!/bin/bash

mkdir -p puppet/environments/test
mkdir -p puppet/environments/test/modules
mkdir -p puppet/environments/test/manifests
ln -s sei.pp puppet/environments/test/manifests/site.pp
cd puppet/environments/test/modules
git clone https://bitbucket.org/instruct/puppet-sei-aio seiaio
puppet module install puppetlabs-apache --modulepath=.
puppet module install puppetlabs-vcsrepo --modulepath=.
puppet module install puppetlabs-inifile --modulepath=.
puppet module install puppetlabs-mysql --modulepath=.
