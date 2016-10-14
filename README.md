# jeeves
Step 1: Copy all items found in "Jeeves Install Files" into the "shared" folder

Step 2: Open up git bash in the jeeves_enterprise file, use "vagrant up masterEnt agent1"

	You may be asked to choose a network interface. If this occours a list will be shown 
	
	showing available network interfaces. Copy down the first in the list (including the '1)')
	
	and hit enter.


Step 3: Once the master VM has Puppet Enterprise installed (i.e. once agent1 has started to boot up):
	
	On the Master VM, open Firefox and enter "https://localhost" into the url bar.
	
	Under "I Understand the Risks", allow an exception and confirm it.
	
	Sign into Puppet Enterprise with username "admin" and password "vagrant1".
	
	Once the agent is booted up, it should be visible in the Puppet Enterprise console.
	

Testing the modules:

	Java:
	In the terminal, type "java -version"
	
	Maven:
	In the terminal, type "mvn --version"
	
	Git:
	In the terminal, type "git --version"
	
	MySQL
	In the terminal, type "mysql -V"
	
	Zabbix
	In the terminal, type "zabbix_agentd -V"
	
	Jenkins
	Open Firefox
	In the url bar, enter "localhost:8080"
	
	Jira
	Open Firefox
	In the url bar, enter "localhost:8082"
	
	Bamboo
	Open Firefox
	In the url bar, enter "localhost:8085"
	
	Nexus
	Open Firefox
	In the url bar, enter "localhost:8081"
	
MCollective

	To use MCollective log into peadmin using sudo -iu peadmin
	Type:
		mco ping
	to see which machines are on the network.

	Plugin files need to be placed in /opt/puppetlabs/mcollective/plugins/mcollective/agent/
	We have written a plugin "command" which will run a shell command on all machines. (You will need to reboot the master before 		using this plugin)
	To use this type:
		mco rpc command command cmd="SHELL_COMMAND"

	for instance, if we wanted to change the time zone to that of Paris, type:
		mco rpc command command cmd="sudo timedatectl set-timezone Europe/Paris"
	
	
