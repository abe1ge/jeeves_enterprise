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
sudo apt-get -y install puppet puppetmaster

echo "Puppet installed"

fqdn=`facter fqdn`
ip=`facter ipaddress_eth1`

sed -i "1i127.0.0.1	$fqdn	puppetmaster" /etc/hosts
sed -i "2i$ip	$fqdn	puppetmaster" /etc/hosts

echo "Hosts file updated"

sudo touch /etc/puppet/manifests/site.pp

sudo cp -r /tmp/shared/bamboo /usr/share/puppet/modules
sudo cp -r /tmp/shared/git /usr/share/puppet/modules
sudo cp -r /tmp/shared/javainstall /usr/share/puppet/modules
sudo cp -r /tmp/shared/jenkins /usr/share/puppet/modules
sudo cp -r /tmp/shared/jira /usr/share/puppet/modules
sudo cp -r /tmp/shared/maven /usr/share/puppet/modules
sudo cp -r /tmp/shared/mysqlinstall /usr/share/puppet/modules
sudo cp -r /tmp/shared/nexus /usr/share/puppet/modules
sudo cp -r /tmp/shared/jenkins_plugin /usr/share/puppet/modules
sudo cp -r /tmp/shared/zabbix /usr/share/puppet/modules

echo "Modules Copied"

sudo echo "node 'jeevesagenttest.qac.local' {" >> /etc/puppet/manifests/site.pp
sudo echo "include javainstall" >> /etc/puppet/manifests/site.pp
sudo echo "include maven" >> /etc/puppet/manifests/site.pp
sudo echo "include nexus" >> /etc/puppet/manifests/site.pp
sudo echo "include git" >> /etc/puppet/manifests/site.pp
sudo echo "include bamboo" >> /etc/puppet/manifests/site.pp
sudo echo "include jira" >> /etc/puppet/manifests/site.pp
sudo echo "include mysqlinstall" >> /etc/puppet/manifests/site.pp
sudo echo "include jenkins" >> /etc/puppet/manifests/site.pp
sudo echo "include zabbix" >> /etc/puppet/manifests/site.pp
#sudo echo "include jenkins_plugin" >> /etc/puppet/manifests/site.pp
sudo echo "}" >> /etc/puppet/manifests/site.pp

sudo echo "" >> /etc/puppet/manifests/site.pp
sudo echo "node 'default' {" >> /etc/puppet/manifests/site.pp
sudo echo "include javainstall" >> /etc/puppet/manifests/site.pp
sudo echo "include maven" >> /etc/puppet/manifests/site.pp
sudo echo "include zabbix" >> /etc/puppet/manifests/site.pp
sudo echo "}" >> /etc/puppet/manifests/site.pp

echo "Site.pp updated"
