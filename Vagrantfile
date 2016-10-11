#-*- mode: ruby -*-
 #vi: set ft=ruby :

 # Starting configuration
 Vagrant.configure("2") do |config|

   # Setting up the Shared folder
  config.vm.synced_folder "shared", "/tmp/shared" 
  
	config.vm.define "masterEnt" do |masterEnt|
  
 		# Configuring Hostname
		masterEnt.vm.hostname= "JeevesmasterEnt.qac.local"
  
		# Selecting the box to use
		masterEnt.vm.box = "chad-thompson/ubuntu-trusty64-gui"
	
		# Setting up the network options
		masterEnt.vm.network :public_network, :public_network=> "wlan0",ip:"192.168.1.124"
		
		# Calling the provision bash file
		masterEnt.vm.provision:shell,path:"bootstrap_masterEnt.sh"
		
		# Configuring vm provider options
		masterEnt.vm.provider "virtualbox" do |masterEntVM|
  
			# Showing the vm GUI and setting its name
			masterEntVM.gui = true
			masterEntVM.name="JeevesmasterEntVM"
   
			# Setting the amount of RAM the VM has access to
			masterEntVM.memory = "4096"
			masterEntVM.cpus = "2"
		end
	end
    
	
	
	config.vm.define "agentEnt1" do |agentEnt|
	
	 	# Configuring Hostname
		agentEnt.vm.hostname= "JeevesagentEnt1.qac.local"
  
		# Selecting the box to use
		agentEnt.vm.box = "chad-thompson/ubuntu-trusty64-gui"
	
		# Setting up the network options
		agentEnt.vm.network :public_network, :public_network=> "wlan0",ip:"192.168.1.125"
		
		# Calling the provision bash file
		agentEnt.vm.provision:shell,path:"bootstrap_agentEnt.sh"
		
		# Configuring vm provider options
		agentEnt.vm.provider "virtualbox" do |agentEntVM|
  
			# Showing the vm GUI and setting its name
			agentEntVM.gui = true
			agentEntVM.name="JeevesagentEnt1"
   
			# Setting the amount of RAM the VM has access to
			agentEntVM.memory = "4096"
			agentEntVM.cpus = "2"
		end
	end
	
		config.vm.define "agentEnt2" do |agentEnt|
	
	 	# Configuring Hostname
		agentEnt.vm.hostname= "JeevesagentEnt2.qac.local"
  
		# Selecting the box to use
		agentEnt.vm.box = "chad-thompson/ubuntu-trusty64-gui"
	
		# Setting up the network options
		agentEnt.vm.network :public_network, :public_network=> "wlan0",ip:"192.168.1.126"
		
		# Calling the provision bash file
		agentEnt.vm.provision:shell,path:"bootstrap_agentEnt.sh"
		
		# Configuring vm provider options
		agentEnt.vm.provider "virtualbox" do |agentEntVM|
  
			# Showing the vm GUI and setting its name
			agentEntVM.gui = true
			agentEntVM.name="JeevesagentEnt2"
   
			# Setting the amount of RAM the VM has access to
			agentEntVM.memory = "4096"
			agentEntVM.cpus = "2"
		end
	end
	
		config.vm.define "agentEnt3" do |agentEnt|
	
	 	# Configuring Hostname
		agentEnt.vm.hostname= "JeevesagentEnt3.qac.local"
  
		# Selecting the box to use
		agentEnt.vm.box = "chad-thompson/ubuntu-trusty64-gui"
	
		# Setting up the network options
		agentEnt.vm.network :public_network, :public_network=> "wlan0",ip:"192.168.1.127"
		
		# Calling the provision bash file
		agentEnt.vm.provision:shell,path:"bootstrap_agentEnt.sh"
		
		# Configuring vm provider options
		agentEnt.vm.provider "virtualbox" do |agentEntVM|
  
			# Showing the vm GUI and setting its name
			agentEntVM.gui = true
			agentEntVM.name="JeevesagentEnt3"
   
			# Setting the amount of RAM the VM has access to
			agentEntVM.memory = "4096"
			agentEntVM.cpus = "2"
		end
	end
	
		config.vm.define "agentEnt4" do |agentEnt|
	
	 	# Configuring Hostname
		agentEnt.vm.hostname= "JeevesagentEnt4.qac.local"
  
		# Selecting the box to use
		agentEnt.vm.box = "chad-thompson/ubuntu-trusty64-gui"
	
		# Setting up the network options
		agentEnt.vm.network :public_network, :public_network=> "wlan0",ip:"192.168.1.128"
		
		# Calling the provision bash file
		agentEnt.vm.provision:shell,path:"bootstrap_agentEnt.sh"
		
		# Configuring vm provider options
		agentEnt.vm.provider "virtualbox" do |agentEntVM|
  
			# Showing the vm GUI and setting its name
			agentEntVM.gui = true
			agentEntVM.name="JeevesagentEnt4"
   
			# Setting the amount of RAM the VM has access to
			agentEntVM.memory = "4096"
			agentEntVM.cpus = "2"
		end
	end

		 config.vm.define "agentEnt5" do |agentEnt|
	
	 	 # Configuring Hostname
		 agentEnt.vm.hostname= "JeevesagentEnt5.qac.local"
  
		 # Selecting the box to use
		 agentEnt.vm.box = "chad-thompson/ubuntu-trusty64-gui"
	
		 # Setting up the network options
		 agentEnt.vm.network :public_network, :public_network=> "wlan0",ip:"192.168.1.129"
		
		 # Calling the provision bash file
		 agentEnt.vm.provision:shell,path:"bootstrap_agentEnt.sh"
		
		 # Configuring vm provider options
		 agentEnt.vm.provider "virtualbox" do |agentEntVM|
  
			 # Showing the vm GUI and setting its name
			 agentEntVM.gui = true
			 agentEntVM.name="JeevesagentEnt5"
   
			 # Setting the amount of RAM the VM has access to
			 agentEntVM.memory = "4096"
			 agentEntVM.cpus = "2"
		 end
	 end
	
	
	# config.vm.define "masterEnttest" do |masterEnt|
  
 		# # Configuring Hostname
		# masterEnt.vm.hostname= "JeevesmasterEntTest.qac.local"
  
		# # Selecting the box to use
		# masterEnt.vm.box = "chad-thompson/ubuntu-trusty64-gui"
	
		# # Setting up the network options
		# masterEnt.vm.network :public_network, :public_network=> "wlan0",ip:"192.168.1.130"
		
		# # Calling the provision bash file
		# masterEnt.vm.provision:shell,path:"bootstrap_masterEnt.sh"
		
		# # Configuring vm provider options
		# masterEnt.vm.provider "virtualbox" do |masterEntVM|
  
			# # Showing the vm GUI and setting its name
			# masterEntVM.gui = true
			# masterEntVM.name="JeevesmasterEntTestVM"
   
			# # Setting the amount of RAM the VM has access to
			# masterEntVM.memory = "4096"
			# masterEntVM.cpus = "2"
		# end
	# end
	 
	 	# config.vm.define "agentEnttest" do |agentEnt|
	
	 	# # Configuring Hostname
		# agentEnt.vm.hostname= "JeevesagentEntTest.qac.local"
  
		# # Selecting the box to use
		# agentEnt.vm.box = "chad-thompson/ubuntu-trusty64-gui"
	
		# # Setting up the network options
		# agentEnt.vm.network :public_network, :public_network=> "wlan0",ip:"192.168.1.131"
		
		# # Calling the provision bash file
		# agentEnt.vm.provision:shell,path:"bootstrap_agentEnt.sh"
		
		# # Configuring vm provider options
		# agentEnt.vm.provider "virtualbox" do |agentEntVM|
  
			# # Showing the vm GUI and setting its name
			# agentEntVM.gui = true
			# agentEntVM.name="JeevesagentEntTest"
   
			# # Setting the amount of RAM the VM has access to
			# agentEntVM.memory = "4096"
			# agentEntVM.cpus = "2"
		# end
	# end
end