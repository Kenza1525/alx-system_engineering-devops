# Modifies ssh_config file

file { '/etc/ssh/ssh_config':
  ensure => present,
}
file_line { 'changed access permission from yes to no':
  path => '/etc/ssh/ssh_config',
  line => '    PasswordAuthentication no',
}
file_line { 'changed the private key':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
}
