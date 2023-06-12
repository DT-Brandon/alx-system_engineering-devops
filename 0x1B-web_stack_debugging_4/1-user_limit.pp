class limits {
  $users = ['holberton']

  file { '/etc/security/limits.conf':
    ensure  => present,
    replace => true,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "## Limits for ${users}\n${users} soft nofile 65535\n${users} hard nofile 65535\n",
  }
}

class { 'limits': }
