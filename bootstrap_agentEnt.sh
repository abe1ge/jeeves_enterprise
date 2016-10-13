#!/usr/bin/env bash

# Updating VM
sudo apt-get -y update

echo "Box updated" 

sudo apt-get -y install openssh-server openssh-client

sudo apt-get install sshpass

echo "Open ssh installed"

sudo apt-get install -y libaio1
sudo apt-get install -y libmecab2

echo "MySQL Dependencies installed"

sudo ufw disable

echo "Firewall disabled"

#Change timezone and keyboard

sudo timedatectl set-timezone Europe/London
setxkbmap gb

echo "Time Zone and Keyboard set to UK standard"

#Install Puppet
sudo apt-get install -y puppet

echo "Puppet installed"

mfqdn="jeevesmasterent.qac.local"
mip="192.168.1.124"

fqdn=`facter fqdn`
ip=`facter ipaddress`

sed -i "1i$mip	$mfqdn	puppetmaster" /etc/hosts
sed -i "2i127.0.0.1	$fqdn	puppet" /etc/hosts
sed -i "3i$ip	$fqdn	puppet" /etc/hosts

sed -i "2iserver=$mfqdn" /etc/puppet/puppet.conf

echo "Hosts file updated"

duration1=$SECONDS
echo "$(($duration1 / 60)) minute(s) and $(($duration1 % 60)) second(s) elapsed."

#sudo puppet agent --test --server="$mfqdn"

sudo apt-get install curl -y

sudo wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb

sudo dpkg -i puppetlabs-release-trusty.deb

sudo apt-get update

curl -k https://jeevesmasterent.qac.local:8140/packages/current/install.bash | sudo bash

sudo puppet agent --enable

sshpass -p "vagrant" ssh -o StrictHostKeyChecking=no vagrant@"$mip" << EOF
sudo puppet cert list
sudo puppet cert sign --all
exit 0
EOF

echo " Puppet certificate signed"

#sudo service puppet stop
#sudo service puppet start

echo "Puppet service restarted"



#sudo puppet agent --enable

echo "Puppet agent enabled"

sudo puppet agent --test --server="$mfqdn"

echo "Puppet agent has linked to master server and applied the puppet modules"

duration2=$SECONDS
echo "$(($duration2 / 60)) minute(s) and $(($duration2 % 60)) second(s) elapsed."
