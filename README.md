# jeeves
Step 1: Ensure the installation files are in the top of the "shared" folder. They do not need to be in a specific folder.

Step 2: vagrant up

Testing the modules:

	Java:
	In the terminal, type "java -version"
	
	Maven:
	In the terminal, type "mvn -version"
	
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
	
	
