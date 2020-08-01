class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTiMyd7jv48j0g1D/v92tJrtttW+mg7/nhsjqt/Yv8SzDCRqh8he0R1zk+Cd8GK74FIDo4+OcHlhPJyppJ6qONrte4WsCIeCPSzf430tK+GN9BdiGKAmPrtg4vOowL+ywrgbQf5I6sfWmXSTfSpDdlwgOz2XCTJRDOXwICsb/t0Syj9ltXuiFOaESjB6v5RZVT1Pl+Ws2iAIkDb5WFR5xRXI/BGlOgB4Z0g2fi0ZINQGz+xxvT6+TRQUehHMxEFrrOg2SWwRXfyrM9XuW/jsvoS70TeBxosIrjbhdOf8UvIXQUPryRIK/ZwtTvGyaiLc3aflvQmlvSV11/NCCRBI79',
	}  
}
