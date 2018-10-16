#!/bin/sh
set -e -x
if which puppet > /dev/null ; then
    echo "Puppet is already installed"
    exít 0
fi
export DEBIAN_FRONTEND=noninteractive

sudo wget -q http://apt.puppetlabs.com/puppetlabs-release-pc1-precise.deb -O /tmp/puppetlabs.deb
sudo dpkg -i /tmp/puppetlabs.deb > /dev/null

rm /tmp/puppetlabs.deb
sudo apt-get update
echo Installlng puppet
sudo apt-get install -y puppet
echo "Puppet installed!"