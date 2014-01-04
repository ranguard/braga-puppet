class baseline::ssh {
    package { ["openssh-server", "openssh-client"]:
      ensure => latest,
    }->
	service { ssh:
		ensure => running,
	}
}



