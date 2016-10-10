class jira {
	#require javainstall
	#require maven
	#require git
	require bamboo
	
	#include jira::install
	
	file { '/opt/jira.bin':
		ensure => present,
		source => '/tmp/shared/jira.bin',
		notify => Exec['jira_executable'],
	}
	
	exec { 'jira_executable':
		path => ['/bin','/usr/bin'],
		command => 'sudo chmod a+x /opt/jira.bin',
		refreshonly => 'true',
		require => File['/opt/jira.bin'],
		notify => File['/opt/jira_setup.sh'],
	}

	file { '/opt/jira_setup.sh':
		ensure => present,
		source => '/tmp/shared/jira/files/jira_setup.sh',
		require => Exec['jira_executable'],
		notify => Exec['unzip_jira'],
	}

	exec { 'unzip_jira':
		unless => 'grep -rnw "/opt/atlassian/jira" -e "install"',
		path => ['/bin','/usr/bin'],
		command => 'sudo bash /opt/jira_setup.sh',
		refreshonly => 'true',
		require => Exec['jira_executable'],
	}	
	
}