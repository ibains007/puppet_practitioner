class system::dbadmins {
  require mysql::server
  Mysql_user {
    password_hash => mysql_password('puppetlabs'),
  }

  $common_users = [
    'zack@localhost',
    'monica@localhost',
    'luke@localhost',
  ]

  mysql_user { $common_users:
    ensure => present,
  }

  mysql_user { 'brad@localhost':
    ensure        => present,
    password_hash => mysql_password('puppet'),
  }

  mysql_user { 'ralph@localhost':
    ensure => absent,
  }
}
