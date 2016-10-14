metadata	:name 		=> "Command Agent",
		:description 	=> "Run any shell command",
		:author		=> "Henri",
		:license		=> "GPLv2",
		:version		=> "1.1",
		:url		=> "https://docs.puppetlabs.com/mcollective",
		:timeout		=> 60

action 'command',	:description => 'Run any shell command' do
	display	:always

	input	:cmd,
			:prompt		=> "Command",
			:description	=> "Your command",
			:type		=> :string,
			:validation	=> '.*',
			:optional	=> false,
			:maxlength	=> 1024
	
	output	:cmd,
			:description	=> 'Command',
			:display_as	=> 'Your command',
			:default	=> ''
end