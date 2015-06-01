class system::hashadmins {
  $defaults = {
    ensure        => present,
    password_hash => mysql_password('puppetlabs'),
  }

  $admin_users = {
    'zach@localhost'   => {},
    'monica@localhost' => {},
    'luke@localhost'   => {},
    'brad@localhost'   => { password_hash => mysql_password('puppet')},
    'ralph@localhost'  => {ensure => absent },
  }

  create_resources('mysql_user', $admin_users, $defauls)
}
