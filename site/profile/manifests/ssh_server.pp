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
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBtu3YFeEdYTNtXu2nMkdtQYP9OV17UHzlPxW9FjmF3AZzMchv0fRkLAer+i/F6W3lGKrp3tqHODBRscblK0Pv/mBjUKg4MNOY1uPf4K0fwNzqe5sx8UJHqwfGOVP3+OBQjB6Af/9feMXBNpsWunuHiLFd3w+HaI7X3Ilf6tAKK3YH8b66UT
ebHT58nknDaQx1aQfLfjHOj+rD9YYrQPqN63d0EoS6kHkNLAn0qCbCbbpsTUyRhymO4aDhJ2itx2szGW1xBfJp8DcIjV91VmjHiw/YYm7Y1EraTzzfJiTK8vu3KAZBZdvwQukRdIULWPXQykgVUv7/l93lufrr2M3T',
        }  
}
