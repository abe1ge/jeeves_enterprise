metadata	:name 		=> "Echo Agent",
		:description 	=> "Simple Echo Agent (written by HW)",
		:author		=> "Henri",
		:license	=> "GPLv2",
		:version	=> "1.1",
		:url		=> "https://docs.puppetlabs.com/mcollective",
		:timeout	=> 60

action 'command',	:description => 'Echo any message' do
	display	:always

	input	:cmd,
			:prompt		=> "Message",
			:description	=> "Your message",
			:type		=> :string,
			:validation	=> '.*',
			:optional	=> false,
			:maxlength	=> 1024
	
	output	:cmd,
			:description	=> 'Your message',
			:display_as	=> 'Message',
			:default	=> ''
end
