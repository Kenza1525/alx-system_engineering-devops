#modifies ssh_config file using puppet

file {'/root/.ssh/school':
    ensure  => present,
    content => 'IdentityFile /root/.ssh/school\nPasswordAuthentication no',
}
