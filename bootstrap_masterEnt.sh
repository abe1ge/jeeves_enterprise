#!/usr/bin/env bash

# Updating VM
sudo apt-get -y update

echo "Box updated"  

sudo apt-get -y install openssh-server openssh-client

echo "Open ssh installed"

sudo ufw disable

echo "Firewall disabled"

#Set time-zone and keyboard

sudo timedatectl set-timezone Europe/London
setxkbmap gb

echo "Time Zone and Keyboard set to UK standard"

#Install Puppet
sudo cp /tmp/shared/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64.tar.gz /opt
cd /opt
sudo tar -zxvf /opt/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64.tar.gz
sudo cp /tmp/shared/answers.install /opt/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64/answers
sudo wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update

sudo /opt/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64/puppet-enterprise-installer -A /opt/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64/answers/answers.install

echo "Puppet installed"

fqdn=`facter fqdn`
ip=`facter ipaddress_eth1`

sed -i "1i127.0.0.1	$fqdn	puppetmaster" /etc/hosts
sed -i "2i$ip	$fqdn	puppetmaster" /etc/hosts

#echo "Hosts file updated"

sudo touch /etc/puppetlabs/code/environments/production/manifests/site.pp

sudo cp -r /tmp/shared/bamboo /etc/puppetlabs/code/environments/production/modules
sudo cp -r /tmp/shared/git /etc/puppetlabs/code/environments/production/modules
sudo cp -r /tmp/shared/javainstall /etc/puppetlabs/code/environments/production/modules
sudo cp -r /tmp/shared/jenkins /etc/puppetlabs/code/environments/production/modules
sudo cp -r /tmp/shared/jira /etc/puppetlabs/code/environments/production/modules
sudo cp -r /tmp/shared/maven /etc/puppetlabs/code/environments/production/modules
sudo cp -r /tmp/shared/mysqlinstall /etc/puppetlabs/code/environments/production/modules
sudo cp -r /tmp/shared/nexus /etc/puppetlabs/code/environments/production/modules
sudo cp -r /tmp/shared/jenkins_plugin /etc/puppetlabs/code/environments/production/modules

echo "Modules Copied"

sudo echo "node 'jeevesagentent1.qac.local','jeevesagentent2.qac.local','jeevesagentent3.qac.local','jeevesagentent4.qac.local' {" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "include javainstall" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "include maven" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "include nexus" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "include git" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "include bamboo" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "include jira" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "include mysqlinstall" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "include jenkins" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "include jenkins_plugin" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "}" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "" >> /etc/puppetlabs/code/environments/production/manifests/site.pp


echo "Site.pp updated"
